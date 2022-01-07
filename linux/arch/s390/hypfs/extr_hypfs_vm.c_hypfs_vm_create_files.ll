; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_vm.c_hypfs_vm_create_files.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_vm.c_hypfs_vm_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.diag2fc_data = type { i32 }

@guest_query = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"hyp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"z/VM Hypervisor\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"cpus\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"systems\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hypfs_vm_create_files(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.diag2fc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @guest_query, align 4
  %11 = call %struct.diag2fc_data* @diag2fc_store(i32 %10, i32* %7, i32 0)
  store %struct.diag2fc_data* %11, %struct.diag2fc_data** %6, align 8
  %12 = load %struct.diag2fc_data*, %struct.diag2fc_data** %6, align 8
  %13 = call i64 @IS_ERR(%struct.diag2fc_data* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.diag2fc_data*, %struct.diag2fc_data** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.diag2fc_data* %16)
  store i32 %17, i32* %2, align 4
  br label %113

18:                                               ; preds = %1
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = bitcast %struct.dentry* %19 to %struct.diag2fc_data*
  %21 = call %struct.diag2fc_data* @hypfs_mkdir(%struct.diag2fc_data* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = bitcast %struct.diag2fc_data* %21 to %struct.dentry*
  store %struct.dentry* %22, %struct.dentry** %4, align 8
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = bitcast %struct.dentry* %23 to %struct.diag2fc_data*
  %25 = call i64 @IS_ERR(%struct.diag2fc_data* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load %struct.dentry*, %struct.dentry** %4, align 8
  %29 = bitcast %struct.dentry* %28 to %struct.diag2fc_data*
  %30 = call i32 @PTR_ERR(%struct.diag2fc_data* %29)
  store i32 %30, i32* %8, align 4
  br label %109

31:                                               ; preds = %18
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = bitcast %struct.dentry* %32 to %struct.diag2fc_data*
  %34 = call %struct.diag2fc_data* @hypfs_create_str(%struct.diag2fc_data* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %35 = bitcast %struct.diag2fc_data* %34 to %struct.dentry*
  store %struct.dentry* %35, %struct.dentry** %5, align 8
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = bitcast %struct.dentry* %36 to %struct.diag2fc_data*
  %38 = call i64 @IS_ERR(%struct.diag2fc_data* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = bitcast %struct.dentry* %41 to %struct.diag2fc_data*
  %43 = call i32 @PTR_ERR(%struct.diag2fc_data* %42)
  store i32 %43, i32* %8, align 4
  br label %109

44:                                               ; preds = %31
  %45 = load %struct.dentry*, %struct.dentry** %3, align 8
  %46 = bitcast %struct.dentry* %45 to %struct.diag2fc_data*
  %47 = call %struct.diag2fc_data* @hypfs_mkdir(%struct.diag2fc_data* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %48 = bitcast %struct.diag2fc_data* %47 to %struct.dentry*
  store %struct.dentry* %48, %struct.dentry** %4, align 8
  %49 = load %struct.dentry*, %struct.dentry** %4, align 8
  %50 = bitcast %struct.dentry* %49 to %struct.diag2fc_data*
  %51 = call i64 @IS_ERR(%struct.diag2fc_data* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load %struct.dentry*, %struct.dentry** %4, align 8
  %55 = bitcast %struct.dentry* %54 to %struct.diag2fc_data*
  %56 = call i32 @PTR_ERR(%struct.diag2fc_data* %55)
  store i32 %56, i32* %8, align 4
  br label %109

57:                                               ; preds = %44
  %58 = load %struct.dentry*, %struct.dentry** %4, align 8
  %59 = bitcast %struct.dentry* %58 to %struct.diag2fc_data*
  %60 = load %struct.diag2fc_data*, %struct.diag2fc_data** %6, align 8
  %61 = getelementptr inbounds %struct.diag2fc_data, %struct.diag2fc_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.diag2fc_data* @hypfs_create_u64(%struct.diag2fc_data* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = bitcast %struct.diag2fc_data* %63 to %struct.dentry*
  store %struct.dentry* %64, %struct.dentry** %5, align 8
  %65 = load %struct.dentry*, %struct.dentry** %5, align 8
  %66 = bitcast %struct.dentry* %65 to %struct.diag2fc_data*
  %67 = call i64 @IS_ERR(%struct.diag2fc_data* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  %71 = bitcast %struct.dentry* %70 to %struct.diag2fc_data*
  %72 = call i32 @PTR_ERR(%struct.diag2fc_data* %71)
  store i32 %72, i32* %8, align 4
  br label %109

73:                                               ; preds = %57
  %74 = load %struct.dentry*, %struct.dentry** %3, align 8
  %75 = bitcast %struct.dentry* %74 to %struct.diag2fc_data*
  %76 = call %struct.diag2fc_data* @hypfs_mkdir(%struct.diag2fc_data* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %77 = bitcast %struct.diag2fc_data* %76 to %struct.dentry*
  store %struct.dentry* %77, %struct.dentry** %4, align 8
  %78 = load %struct.dentry*, %struct.dentry** %4, align 8
  %79 = bitcast %struct.dentry* %78 to %struct.diag2fc_data*
  %80 = call i64 @IS_ERR(%struct.diag2fc_data* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = load %struct.dentry*, %struct.dentry** %4, align 8
  %84 = bitcast %struct.dentry* %83 to %struct.diag2fc_data*
  %85 = call i32 @PTR_ERR(%struct.diag2fc_data* %84)
  store i32 %85, i32* %8, align 4
  br label %109

86:                                               ; preds = %73
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %103, %86
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %87
  %92 = load %struct.dentry*, %struct.dentry** %4, align 8
  %93 = bitcast %struct.dentry* %92 to %struct.diag2fc_data*
  %94 = load %struct.diag2fc_data*, %struct.diag2fc_data** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.diag2fc_data, %struct.diag2fc_data* %94, i64 %96
  %98 = call i32 @hypfs_vm_create_guest(%struct.diag2fc_data* %93, %struct.diag2fc_data* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %109

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %87

106:                                              ; preds = %87
  %107 = load %struct.diag2fc_data*, %struct.diag2fc_data** %6, align 8
  %108 = call i32 @diag2fc_free(%struct.diag2fc_data* %107)
  store i32 0, i32* %2, align 4
  br label %113

109:                                              ; preds = %101, %82, %69, %53, %40, %27
  %110 = load %struct.diag2fc_data*, %struct.diag2fc_data** %6, align 8
  %111 = call i32 @diag2fc_free(%struct.diag2fc_data* %110)
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %109, %106, %15
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.diag2fc_data* @diag2fc_store(i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.diag2fc_data*) #1

declare dso_local i32 @PTR_ERR(%struct.diag2fc_data*) #1

declare dso_local %struct.diag2fc_data* @hypfs_mkdir(%struct.diag2fc_data*, i8*) #1

declare dso_local %struct.diag2fc_data* @hypfs_create_str(%struct.diag2fc_data*, i8*, i8*) #1

declare dso_local %struct.diag2fc_data* @hypfs_create_u64(%struct.diag2fc_data*, i8*, i32) #1

declare dso_local i32 @hypfs_vm_create_guest(%struct.diag2fc_data*, %struct.diag2fc_data*) #1

declare dso_local i32 @diag2fc_free(%struct.diag2fc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
