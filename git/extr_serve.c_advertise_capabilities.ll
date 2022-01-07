; ModuleID = '/home/carl/AnghaBench/git/extr_serve.c_advertise_capabilities.c'
source_filename = "/home/carl/AnghaBench/git/extr_serve.c_advertise_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }
%struct.protocol_capability = type { i32, i64 (i32, %struct.strbuf*)* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@capabilities = common dso_local global %struct.protocol_capability* null, align 8
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @advertise_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @advertise_capabilities() #0 {
  %1 = alloca %struct.strbuf, align 8
  %2 = alloca %struct.strbuf, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.protocol_capability*, align 8
  %5 = bitcast %struct.strbuf* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %6 = bitcast %struct.strbuf* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %44, %0
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.protocol_capability*, %struct.protocol_capability** @capabilities, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.protocol_capability* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %7
  %13 = load %struct.protocol_capability*, %struct.protocol_capability** @capabilities, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.protocol_capability, %struct.protocol_capability* %13, i64 %15
  store %struct.protocol_capability* %16, %struct.protocol_capability** %4, align 8
  %17 = load %struct.protocol_capability*, %struct.protocol_capability** %4, align 8
  %18 = getelementptr inbounds %struct.protocol_capability, %struct.protocol_capability* %17, i32 0, i32 1
  %19 = load i64 (i32, %struct.strbuf*)*, i64 (i32, %struct.strbuf*)** %18, align 8
  %20 = load i32, i32* @the_repository, align 4
  %21 = call i64 %19(i32 %20, %struct.strbuf* %2)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %12
  %24 = load %struct.protocol_capability*, %struct.protocol_capability** %4, align 8
  %25 = getelementptr inbounds %struct.protocol_capability, %struct.protocol_capability* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @strbuf_addstr(%struct.strbuf* %1, i32 %26)
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %2, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = call i32 @strbuf_addch(%struct.strbuf* %1, i8 signext 61)
  %33 = call i32 @strbuf_addbuf(%struct.strbuf* %1, %struct.strbuf* %2)
  br label %34

34:                                               ; preds = %31, %23
  %35 = call i32 @strbuf_addch(%struct.strbuf* %1, i8 signext 10)
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @packet_write(i32 1, i32 %37, i64 %39)
  br label %41

41:                                               ; preds = %34, %12
  %42 = call i32 @strbuf_reset(%struct.strbuf* %1)
  %43 = call i32 @strbuf_reset(%struct.strbuf* %2)
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %7

47:                                               ; preds = %7
  %48 = call i32 @packet_flush(i32 1)
  %49 = call i32 @strbuf_release(%struct.strbuf* %1)
  %50 = call i32 @strbuf_release(%struct.strbuf* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.protocol_capability*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @packet_write(i32, i32, i64) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @packet_flush(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
