; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_line_log_rewrite_one.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_line_log_rewrite_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.commit = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.commit*, i64 }
%struct.TYPE_3__ = type { i32 }

@rewrite_one_ok = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@TREESAME = common dso_local global i32 0, align 4
@rewrite_one_noparents = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, %struct.commit**)* @line_log_rewrite_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @line_log_rewrite_one(%struct.rev_info* %0, %struct.commit** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca %struct.commit**, align 8
  %6 = alloca %struct.commit*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %4, align 8
  store %struct.commit** %1, %struct.commit*** %5, align 8
  br label %7

7:                                                ; preds = %50, %2
  %8 = load %struct.commit**, %struct.commit*** %5, align 8
  %9 = load %struct.commit*, %struct.commit** %8, align 8
  store %struct.commit* %9, %struct.commit** %6, align 8
  %10 = load %struct.commit*, %struct.commit** %6, align 8
  %11 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  %15 = load %struct.commit*, %struct.commit** %6, align 8
  %16 = getelementptr inbounds %struct.commit, %struct.commit* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @rewrite_one_ok, align 4
  store i32 %22, i32* %3, align 4
  br label %57

23:                                               ; preds = %14, %7
  %24 = load %struct.commit*, %struct.commit** %6, align 8
  %25 = getelementptr inbounds %struct.commit, %struct.commit* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @UNINTERESTING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @rewrite_one_ok, align 4
  store i32 %32, i32* %3, align 4
  br label %57

33:                                               ; preds = %23
  %34 = load %struct.commit*, %struct.commit** %6, align 8
  %35 = getelementptr inbounds %struct.commit, %struct.commit* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TREESAME, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @rewrite_one_ok, align 4
  store i32 %42, i32* %3, align 4
  br label %57

43:                                               ; preds = %33
  %44 = load %struct.commit*, %struct.commit** %6, align 8
  %45 = getelementptr inbounds %struct.commit, %struct.commit* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = icmp ne %struct.TYPE_4__* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @rewrite_one_noparents, align 4
  store i32 %49, i32* %3, align 4
  br label %57

50:                                               ; preds = %43
  %51 = load %struct.commit*, %struct.commit** %6, align 8
  %52 = getelementptr inbounds %struct.commit, %struct.commit* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.commit*, %struct.commit** %54, align 8
  %56 = load %struct.commit**, %struct.commit*** %5, align 8
  store %struct.commit* %55, %struct.commit** %56, align 8
  br label %7

57:                                               ; preds = %48, %41, %31, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
