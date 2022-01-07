; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_kn_mode_restore.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_kn_mode_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rftype = type { i32, i32 }
%struct.rdtgroup = type { i32 }
%struct.iattr = type { i32, i32 }
%struct.kernfs_node = type { i32 }

@ATTR_MODE = common dso_local global i32 0, align 4
@res_common_files = common dso_local global %struct.rftype* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdtgroup_kn_mode_restore(%struct.rdtgroup* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdtgroup*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iattr, align 4
  %9 = alloca %struct.kernfs_node*, align 8
  %10 = alloca %struct.kernfs_node*, align 8
  %11 = alloca %struct.rftype*, align 8
  %12 = alloca %struct.rftype*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rdtgroup* %0, %struct.rdtgroup** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = getelementptr inbounds %struct.iattr, %struct.iattr* %8, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.iattr, %struct.iattr* %8, i32 0, i32 1
  %17 = load i32, i32* @ATTR_MODE, align 4
  store i32 %17, i32* %16, align 4
  %18 = load %struct.rftype*, %struct.rftype** @res_common_files, align 8
  store %struct.rftype* %18, %struct.rftype** %11, align 8
  %19 = load %struct.rftype*, %struct.rftype** @res_common_files, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.rftype* %19)
  store i32 %20, i32* %14, align 4
  %21 = load %struct.rftype*, %struct.rftype** %11, align 8
  store %struct.rftype* %21, %struct.rftype** %12, align 8
  br label %22

22:                                               ; preds = %44, %3
  %23 = load %struct.rftype*, %struct.rftype** %12, align 8
  %24 = load %struct.rftype*, %struct.rftype** %11, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.rftype, %struct.rftype* %24, i64 %26
  %28 = icmp ult %struct.rftype* %23, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %22
  %30 = load %struct.rftype*, %struct.rftype** %12, align 8
  %31 = getelementptr inbounds %struct.rftype, %struct.rftype* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strcmp(i32 %32, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load %struct.rftype*, %struct.rftype** %12, align 8
  %38 = getelementptr inbounds %struct.rftype, %struct.rftype* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %39, %40
  %42 = getelementptr inbounds %struct.iattr, %struct.iattr* %8, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %29
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.rftype*, %struct.rftype** %12, align 8
  %46 = getelementptr inbounds %struct.rftype, %struct.rftype* %45, i32 1
  store %struct.rftype* %46, %struct.rftype** %12, align 8
  br label %22

47:                                               ; preds = %22
  %48 = load %struct.rdtgroup*, %struct.rdtgroup** %5, align 8
  %49 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = call %struct.kernfs_node* @kernfs_find_and_get_ns(i32 %50, i8* %51, i32* null)
  store %struct.kernfs_node* %52, %struct.kernfs_node** %9, align 8
  %53 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %54 = icmp ne %struct.kernfs_node* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %96

58:                                               ; preds = %47
  %59 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %60 = call i32 @kernfs_type(%struct.kernfs_node* %59)
  switch i32 %60, label %90 [
    i32 130, label %61
    i32 129, label %80
    i32 128, label %85
  ]

61:                                               ; preds = %58
  %62 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %63 = call %struct.kernfs_node* @kernfs_get_parent(%struct.kernfs_node* %62)
  store %struct.kernfs_node* %63, %struct.kernfs_node** %10, align 8
  %64 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %65 = icmp ne %struct.kernfs_node* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %68 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.iattr, %struct.iattr* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 4
  %73 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %74 = call i32 @kernfs_put(%struct.kernfs_node* %73)
  br label %75

75:                                               ; preds = %66, %61
  %76 = load i32, i32* @S_IFDIR, align 4
  %77 = getelementptr inbounds %struct.iattr, %struct.iattr* %8, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %90

80:                                               ; preds = %58
  %81 = load i32, i32* @S_IFREG, align 4
  %82 = getelementptr inbounds %struct.iattr, %struct.iattr* %8, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 4
  br label %90

85:                                               ; preds = %58
  %86 = load i32, i32* @S_IFLNK, align 4
  %87 = getelementptr inbounds %struct.iattr, %struct.iattr* %8, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %86
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %58, %85, %80, %75
  %91 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %92 = call i32 @kernfs_setattr(%struct.kernfs_node* %91, %struct.iattr* %8)
  store i32 %92, i32* %13, align 4
  %93 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %94 = call i32 @kernfs_put(%struct.kernfs_node* %93)
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %90, %55
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @ARRAY_SIZE(%struct.rftype*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.kernfs_node* @kernfs_find_and_get_ns(i32, i8*, i32*) #1

declare dso_local i32 @kernfs_type(%struct.kernfs_node*) #1

declare dso_local %struct.kernfs_node* @kernfs_get_parent(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_setattr(%struct.kernfs_node*, %struct.iattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
