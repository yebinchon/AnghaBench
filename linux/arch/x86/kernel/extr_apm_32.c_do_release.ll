; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_apm_32.c_do_release.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_apm_32.c_do_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_user = type { i64, i64, %struct.apm_user* }
%struct.inode = type { i32 }
%struct.file = type { %struct.apm_user* }

@.str = private unnamed_addr constant [8 x i8] c"release\00", align 1
@standbys_pending = common dso_local global i64 0, align 8
@suspends_pending = common dso_local global i64 0, align 8
@user_list_lock = common dso_local global i32 0, align 4
@user_list = common dso_local global %struct.apm_user* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"filp not in user list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @do_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.apm_user*, align 8
  %7 = alloca %struct.apm_user*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.apm_user*, %struct.apm_user** %9, align 8
  store %struct.apm_user* %10, %struct.apm_user** %6, align 8
  %11 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %12 = call i64 @check_apm_user(%struct.apm_user* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %92

15:                                               ; preds = %2
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  store %struct.apm_user* null, %struct.apm_user** %17, align 8
  %18 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %19 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %24 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @standbys_pending, align 8
  %27 = sub nsw i64 %26, %25
  store i64 %27, i64* @standbys_pending, align 8
  %28 = load i64, i64* @standbys_pending, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = call i32 (...) @standby()
  br label %32

32:                                               ; preds = %30, %22
  br label %33

33:                                               ; preds = %32, %15
  %34 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %35 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %40 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @suspends_pending, align 8
  %43 = sub nsw i64 %42, %41
  store i64 %43, i64* @suspends_pending, align 8
  %44 = load i64, i64* @suspends_pending, align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = call i32 @suspend(i32 1)
  br label %48

48:                                               ; preds = %46, %38
  br label %49

49:                                               ; preds = %48, %33
  %50 = call i32 @spin_lock(i32* @user_list_lock)
  %51 = load %struct.apm_user*, %struct.apm_user** @user_list, align 8
  %52 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %53 = icmp eq %struct.apm_user* %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %56 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %55, i32 0, i32 2
  %57 = load %struct.apm_user*, %struct.apm_user** %56, align 8
  store %struct.apm_user* %57, %struct.apm_user** @user_list, align 8
  br label %88

58:                                               ; preds = %49
  %59 = load %struct.apm_user*, %struct.apm_user** @user_list, align 8
  store %struct.apm_user* %59, %struct.apm_user** %7, align 8
  br label %60

60:                                               ; preds = %72, %58
  %61 = load %struct.apm_user*, %struct.apm_user** %7, align 8
  %62 = icmp ne %struct.apm_user* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.apm_user*, %struct.apm_user** %7, align 8
  %65 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %64, i32 0, i32 2
  %66 = load %struct.apm_user*, %struct.apm_user** %65, align 8
  %67 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %68 = icmp ne %struct.apm_user* %66, %67
  br label %69

69:                                               ; preds = %63, %60
  %70 = phi i1 [ false, %60 ], [ %68, %63 ]
  br i1 %70, label %71, label %76

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.apm_user*, %struct.apm_user** %7, align 8
  %74 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %73, i32 0, i32 2
  %75 = load %struct.apm_user*, %struct.apm_user** %74, align 8
  store %struct.apm_user* %75, %struct.apm_user** %7, align 8
  br label %60

76:                                               ; preds = %69
  %77 = load %struct.apm_user*, %struct.apm_user** %7, align 8
  %78 = icmp eq %struct.apm_user* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %87

81:                                               ; preds = %76
  %82 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %83 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %82, i32 0, i32 2
  %84 = load %struct.apm_user*, %struct.apm_user** %83, align 8
  %85 = load %struct.apm_user*, %struct.apm_user** %7, align 8
  %86 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %85, i32 0, i32 2
  store %struct.apm_user* %84, %struct.apm_user** %86, align 8
  br label %87

87:                                               ; preds = %81, %79
  br label %88

88:                                               ; preds = %87, %54
  %89 = call i32 @spin_unlock(i32* @user_list_lock)
  %90 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %91 = call i32 @kfree(%struct.apm_user* %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %14
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @check_apm_user(%struct.apm_user*, i8*) #1

declare dso_local i32 @standby(...) #1

declare dso_local i32 @suspend(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.apm_user*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
