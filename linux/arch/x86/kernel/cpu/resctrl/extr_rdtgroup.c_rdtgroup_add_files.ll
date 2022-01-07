; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_add_files.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_add_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rftype = type { i64, i32 }
%struct.kernfs_node = type { i32 }

@res_common_files = common dso_local global %struct.rftype* null, align 8
@rdtgroup_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to add %s, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_node*, i64)* @rdtgroup_add_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdtgroup_add_files(%struct.kernfs_node* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kernfs_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rftype*, align 8
  %7 = alloca %struct.rftype*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.rftype*, %struct.rftype** @res_common_files, align 8
  store %struct.rftype* %10, %struct.rftype** %6, align 8
  %11 = load %struct.rftype*, %struct.rftype** @res_common_files, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.rftype* %11)
  store i32 %12, i32* %9, align 4
  %13 = call i32 @lockdep_assert_held(i32* @rdtgroup_mutex)
  %14 = load %struct.rftype*, %struct.rftype** %6, align 8
  store %struct.rftype* %14, %struct.rftype** %7, align 8
  br label %15

15:                                               ; preds = %41, %2
  %16 = load %struct.rftype*, %struct.rftype** %7, align 8
  %17 = load %struct.rftype*, %struct.rftype** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.rftype, %struct.rftype* %17, i64 %19
  %21 = icmp ult %struct.rftype* %16, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %15
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.rftype*, %struct.rftype** %7, align 8
  %25 = getelementptr inbounds %struct.rftype, %struct.rftype* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = and i64 %23, %26
  %28 = load %struct.rftype*, %struct.rftype** %7, align 8
  %29 = getelementptr inbounds %struct.rftype, %struct.rftype* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %22
  %33 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %34 = load %struct.rftype*, %struct.rftype** %7, align 8
  %35 = call i32 @rdtgroup_add_file(%struct.kernfs_node* %33, %struct.rftype* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %45

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %22
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.rftype*, %struct.rftype** %7, align 8
  %43 = getelementptr inbounds %struct.rftype, %struct.rftype* %42, i32 1
  store %struct.rftype* %43, %struct.rftype** %7, align 8
  br label %15

44:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %75

45:                                               ; preds = %38
  %46 = load %struct.rftype*, %struct.rftype** %7, align 8
  %47 = getelementptr inbounds %struct.rftype, %struct.rftype* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %72, %45
  %52 = load %struct.rftype*, %struct.rftype** %7, align 8
  %53 = getelementptr inbounds %struct.rftype, %struct.rftype* %52, i32 -1
  store %struct.rftype* %53, %struct.rftype** %7, align 8
  %54 = load %struct.rftype*, %struct.rftype** %6, align 8
  %55 = icmp uge %struct.rftype* %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.rftype*, %struct.rftype** %7, align 8
  %59 = getelementptr inbounds %struct.rftype, %struct.rftype* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = and i64 %57, %60
  %62 = load %struct.rftype*, %struct.rftype** %7, align 8
  %63 = getelementptr inbounds %struct.rftype, %struct.rftype* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %56
  %67 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %68 = load %struct.rftype*, %struct.rftype** %7, align 8
  %69 = getelementptr inbounds %struct.rftype, %struct.rftype* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @kernfs_remove_by_name(%struct.kernfs_node* %67, i32 %70)
  br label %72

72:                                               ; preds = %66, %56
  br label %51

73:                                               ; preds = %51
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %44
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @ARRAY_SIZE(%struct.rftype*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @rdtgroup_add_file(%struct.kernfs_node*, %struct.rftype*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @kernfs_remove_by_name(%struct.kernfs_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
