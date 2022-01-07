; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_match_stat_data.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_match_stat_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat_data = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.stat = type { i64, i64, i64, i64, i64, i64, i64 }

@MTIME_CHANGED = common dso_local global i32 0, align 4
@trust_ctime = common dso_local global i64 0, align 8
@check_stat = common dso_local global i64 0, align 8
@CTIME_CHANGED = common dso_local global i32 0, align 4
@OWNER_CHANGED = common dso_local global i32 0, align 4
@INODE_CHANGED = common dso_local global i32 0, align 4
@DATA_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @match_stat_data(%struct.stat_data* %0, %struct.stat* %1) #0 {
  %3 = alloca %struct.stat_data*, align 8
  %4 = alloca %struct.stat*, align 8
  %5 = alloca i32, align 4
  store %struct.stat_data* %0, %struct.stat_data** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %7 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %6, i32 0, i32 6
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.stat*, %struct.stat** %4, align 8
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = icmp ne i32 %9, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @MTIME_CHANGED, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i64, i64* @trust_ctime, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load i64, i64* @check_stat, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %27 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.stat*, %struct.stat** %4, align 8
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = icmp ne i32 %29, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load i32, i32* @CTIME_CHANGED, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %25, %22, %19
  %40 = load i64, i64* @check_stat, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %78

42:                                               ; preds = %39
  %43 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %44 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.stat*, %struct.stat** %4, align 8
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = icmp ne i32 %45, %49
  br i1 %50, label %60, label %51

51:                                               ; preds = %42
  %52 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %53 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.stat*, %struct.stat** %4, align 8
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = icmp ne i32 %54, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %51, %42
  %61 = load i32, i32* @OWNER_CHANGED, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %51
  %65 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %66 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.stat*, %struct.stat** %4, align 8
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = icmp ne i32 %67, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load i32, i32* @INODE_CHANGED, align 4
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %64
  br label %78

78:                                               ; preds = %77, %39
  %79 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %80 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.stat*, %struct.stat** %4, align 8
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = icmp ne i32 %81, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load i32, i32* @DATA_CHANGED, align 4
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %87, %78
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
