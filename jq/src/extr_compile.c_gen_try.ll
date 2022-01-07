; ModuleID = '/home/carl/AnghaBench/jq/src/extr_compile.c_gen_try.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_compile.c_gen_try.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }

@DUP = common dso_local global i32 0, align 4
@POP = common dso_local global i32 0, align 4
@JUMP = common dso_local global i32 0, align 4
@FORK_OPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gen_try(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_11__, align 4
  %4 = alloca %struct.TYPE_11__, align 4
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca %struct.TYPE_11__, align 4
  %10 = alloca %struct.TYPE_11__, align 4
  %11 = alloca %struct.TYPE_11__, align 4
  %12 = bitcast %struct.TYPE_11__* %4 to i64*
  store i64 %0, i64* %12, align 4
  %13 = bitcast %struct.TYPE_11__* %5 to i64*
  store i64 %1, i64* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @DUP, align 4
  %23 = call i64 @gen_op_simple(i32 %22)
  %24 = bitcast %struct.TYPE_11__* %7 to i64*
  store i64 %23, i64* %24, align 4
  %25 = load i32, i32* @POP, align 4
  %26 = call i64 @gen_op_simple(i32 %25)
  %27 = bitcast %struct.TYPE_11__* %8 to i64*
  store i64 %26, i64* %27, align 4
  %28 = bitcast %struct.TYPE_11__* %7 to i64*
  %29 = load i64, i64* %28, align 4
  %30 = bitcast %struct.TYPE_11__* %8 to i64*
  %31 = load i64, i64* %30, align 4
  %32 = bitcast %struct.TYPE_11__* %5 to i64*
  %33 = load i64, i64* %32, align 4
  %34 = call i64 (i64, i64, ...) @BLOCK(i64 %29, i64 %31, i64 %33)
  %35 = bitcast %struct.TYPE_11__* %6 to i64*
  store i64 %34, i64* %35, align 4
  %36 = bitcast %struct.TYPE_11__* %5 to i8*
  %37 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 8, i1 false)
  br label %38

38:                                               ; preds = %21, %17, %2
  %39 = load i32, i32* @JUMP, align 4
  %40 = bitcast %struct.TYPE_11__* %5 to i64*
  %41 = load i64, i64* %40, align 4
  %42 = call i64 @gen_op_target(i32 %39, i64 %41)
  %43 = bitcast %struct.TYPE_11__* %10 to i64*
  store i64 %42, i64* %43, align 4
  %44 = bitcast %struct.TYPE_11__* %4 to i64*
  %45 = load i64, i64* %44, align 4
  %46 = bitcast %struct.TYPE_11__* %10 to i64*
  %47 = load i64, i64* %46, align 4
  %48 = call i64 (i64, i64, ...) @BLOCK(i64 %45, i64 %47)
  %49 = bitcast %struct.TYPE_11__* %9 to i64*
  store i64 %48, i64* %49, align 4
  %50 = bitcast %struct.TYPE_11__* %4 to i8*
  %51 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 8, i1 false)
  %52 = load i32, i32* @FORK_OPT, align 4
  %53 = bitcast %struct.TYPE_11__* %4 to i64*
  %54 = load i64, i64* %53, align 4
  %55 = call i64 @gen_op_target(i32 %52, i64 %54)
  %56 = bitcast %struct.TYPE_11__* %11 to i64*
  store i64 %55, i64* %56, align 4
  %57 = bitcast %struct.TYPE_11__* %11 to i64*
  %58 = load i64, i64* %57, align 4
  %59 = bitcast %struct.TYPE_11__* %4 to i64*
  %60 = load i64, i64* %59, align 4
  %61 = bitcast %struct.TYPE_11__* %5 to i64*
  %62 = load i64, i64* %61, align 4
  %63 = call i64 (i64, i64, ...) @BLOCK(i64 %58, i64 %60, i64 %62)
  %64 = bitcast %struct.TYPE_11__* %3 to i64*
  store i64 %63, i64* %64, align 4
  %65 = bitcast %struct.TYPE_11__* %3 to i64*
  %66 = load i64, i64* %65, align 4
  ret i64 %66
}

declare dso_local i64 @BLOCK(i64, i64, ...) #1

declare dso_local i64 @gen_op_simple(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @gen_op_target(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
