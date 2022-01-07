; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_regexp.c_test_core_regexp__compile_userdiff_regexps.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_regexp.c_test_core_regexp__compile_userdiff_regexps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@builtin_defs = common dso_local global %struct.TYPE_4__* null, align 8
@regex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_regexp__compile_userdiff_regexps() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  store i64 0, i64* %1, align 8
  br label %3

3:                                                ; preds = %26, %0
  %4 = load i64, i64* %1, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @builtin_defs, align 8
  %6 = call i64 @ARRAY_SIZE(%struct.TYPE_4__* %5)
  %7 = icmp ult i64 %4, %6
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @builtin_defs, align 8
  %10 = load i64, i64* %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %10
  %12 = bitcast %struct.TYPE_4__* %2 to i8*
  %13 = bitcast %struct.TYPE_4__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 12, i1 false)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @git_regexp_compile(i32* @regex, i32 %15, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = call i32 @git_regexp_dispose(i32* @regex)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @git_regexp_compile(i32* @regex, i32 %22, i32 0)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = call i32 @git_regexp_dispose(i32* @regex)
  br label %26

26:                                               ; preds = %8
  %27 = load i64, i64* %1, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %1, align 8
  br label %3

29:                                               ; preds = %3
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_regexp_compile(i32*, i32, i32) #1

declare dso_local i32 @git_regexp_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
