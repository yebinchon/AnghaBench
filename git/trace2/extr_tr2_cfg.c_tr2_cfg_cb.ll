; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_cfg.c_tr2_cfg_cb.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_cfg.c_tr2_cfg_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.tr2_cfg_data = type { i32, i32 }

@tr2_cfg_patterns = common dso_local global %struct.strbuf** null, align 8
@WM_CASEFOLD = common dso_local global i32 0, align 4
@WM_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @tr2_cfg_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tr2_cfg_cb(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.strbuf**, align 8
  %9 = alloca %struct.tr2_cfg_data*, align 8
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.tr2_cfg_data*
  store %struct.tr2_cfg_data* %13, %struct.tr2_cfg_data** %9, align 8
  %14 = load %struct.strbuf**, %struct.strbuf*** @tr2_cfg_patterns, align 8
  store %struct.strbuf** %14, %struct.strbuf*** %8, align 8
  br label %15

15:                                               ; preds = %42, %3
  %16 = load %struct.strbuf**, %struct.strbuf*** %8, align 8
  %17 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %18 = icmp ne %struct.strbuf* %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load %struct.strbuf**, %struct.strbuf*** %8, align 8
  %21 = load %struct.strbuf*, %struct.strbuf** %20, align 8
  store %struct.strbuf* %21, %struct.strbuf** %10, align 8
  %22 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @WM_CASEFOLD, align 4
  %27 = call i32 @wildmatch(i32 %24, i8* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @WM_MATCH, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %19
  %32 = load %struct.tr2_cfg_data*, %struct.tr2_cfg_data** %9, align 8
  %33 = getelementptr inbounds %struct.tr2_cfg_data, %struct.tr2_cfg_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tr2_cfg_data*, %struct.tr2_cfg_data** %9, align 8
  %36 = getelementptr inbounds %struct.tr2_cfg_data, %struct.tr2_cfg_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @trace2_def_param_fl(i32 %34, i32 %37, i8* %38, i8* %39)
  store i32 0, i32* %4, align 4
  br label %46

41:                                               ; preds = %19
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.strbuf**, %struct.strbuf*** %8, align 8
  %44 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %43, i32 1
  store %struct.strbuf** %44, %struct.strbuf*** %8, align 8
  br label %15

45:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @wildmatch(i32, i8*, i32) #1

declare dso_local i32 @trace2_def_param_fl(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
