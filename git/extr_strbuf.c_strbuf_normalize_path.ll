; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_normalize_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_normalize_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strbuf_normalize_path(%struct.strbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca %struct.strbuf, align 4
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  %5 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %6 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %7 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @strbuf_grow(%struct.strbuf* %4, i32 %8)
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @normalize_path_copy(i32 %11, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @strbuf_release(%struct.strbuf* %4)
  store i32 -1, i32* %2, align 4
  br label %27

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strlen(i32 %21)
  %23 = call i32 @strbuf_setlen(%struct.strbuf* %4, i32 %22)
  %24 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %25 = call i32 @strbuf_swap(%struct.strbuf* %24, %struct.strbuf* %4)
  %26 = call i32 @strbuf_release(%struct.strbuf* %4)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %19, %17
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i32) #2

declare dso_local i64 @normalize_path_copy(i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @strbuf_swap(%struct.strbuf*, %struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
