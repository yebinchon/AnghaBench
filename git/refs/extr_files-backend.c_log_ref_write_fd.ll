; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_log_ref_write_fd.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_log_ref_write_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.object_id*, %struct.object_id*, i8*, i8*)* @log_ref_write_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_ref_write_fd(i32 %0, %struct.object_id* %1, %struct.object_id* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %12, align 4
  %14 = load %struct.object_id*, %struct.object_id** %7, align 8
  %15 = call i32 @oid_to_hex(%struct.object_id* %14)
  %16 = load %struct.object_id*, %struct.object_id** %8, align 8
  %17 = call i32 @oid_to_hex(%struct.object_id* %16)
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @strbuf_addf(%struct.strbuf* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17, i8* %18)
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = load i8*, i8** %10, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @copy_reflog_msg(%struct.strbuf* %11, i8* %28)
  br label %30

30:                                               ; preds = %27, %22, %5
  %31 = call i32 @strbuf_addch(%struct.strbuf* %11, i8 signext 10)
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @write_in_full(i32 %32, i32 %34, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 -1, i32* %12, align 4
  br label %40

40:                                               ; preds = %39, %30
  %41 = call i32 @strbuf_release(%struct.strbuf* %11)
  %42 = load i32, i32* %12, align 4
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i32, i8*) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @copy_reflog_msg(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i64 @write_in_full(i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
