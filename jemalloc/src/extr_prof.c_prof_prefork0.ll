; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_prefork0.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_prefork0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_prof = common dso_local global i64 0, align 8
@opt_prof = common dso_local global i64 0, align 8
@prof_dump_mtx = common dso_local global i32 0, align 4
@bt2gctx_mtx = common dso_local global i32 0, align 4
@tdatas_mtx = common dso_local global i32 0, align 4
@PROF_NTDATA_LOCKS = common dso_local global i32 0, align 4
@tdata_locks = common dso_local global i32* null, align 8
@PROF_NCTX_LOCKS = common dso_local global i32 0, align 4
@gctx_locks = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prof_prefork0(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i64, i64* @config_prof, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %46

6:                                                ; preds = %1
  %7 = load i64, i64* @opt_prof, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %46

9:                                                ; preds = %6
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @malloc_mutex_prefork(i32* %10, i32* @prof_dump_mtx)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @malloc_mutex_prefork(i32* %12, i32* @bt2gctx_mtx)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @malloc_mutex_prefork(i32* %14, i32* @tdatas_mtx)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %27, %9
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @PROF_NTDATA_LOCKS, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32*, i32** %2, align 8
  %22 = load i32*, i32** @tdata_locks, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @malloc_mutex_prefork(i32* %21, i32* %25)
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %16

30:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %42, %30
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @PROF_NCTX_LOCKS, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i32*, i32** %2, align 8
  %37 = load i32*, i32** @gctx_locks, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @malloc_mutex_prefork(i32* %36, i32* %40)
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %3, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %31

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %6, %1
  ret void
}

declare dso_local i32 @malloc_mutex_prefork(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
