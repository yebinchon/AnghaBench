; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_debug.c_debug_register_view.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_debug.c_debug_register_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.dentry**, %struct.debug_view**, i32, i32 }
%struct.dentry = type { i32 }
%struct.debug_view = type { i32, i32, i64, i64, i64 }

@S_IFREG = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@debug_file_ops = common dso_local global i32 0, align 4
@DEBUG_MAX_VIEWS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Registering view %s/%s would exceed the maximum number of views %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @debug_register_view(%struct.TYPE_4__* %0, %struct.debug_view* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.debug_view*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.debug_view* %1, %struct.debug_view** %4, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %130

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @S_IFREG, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @S_IXUGO, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.debug_view*, %struct.debug_view** %4, align 8
  %23 = getelementptr inbounds %struct.debug_view, %struct.debug_view* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %13
  %27 = load %struct.debug_view*, %struct.debug_view** %4, align 8
  %28 = getelementptr inbounds %struct.debug_view, %struct.debug_view* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %26
  %32 = load %struct.debug_view*, %struct.debug_view** %4, align 8
  %33 = getelementptr inbounds %struct.debug_view, %struct.debug_view* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @S_IRUSR, align 4
  %38 = load i32, i32* @S_IRGRP, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @S_IROTH, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %36, %31, %26, %13
  %46 = load %struct.debug_view*, %struct.debug_view** %4, align 8
  %47 = getelementptr inbounds %struct.debug_view, %struct.debug_view* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @S_IWUSR, align 4
  %52 = load i32, i32* @S_IWGRP, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @S_IWOTH, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %50, %45
  %60 = load %struct.debug_view*, %struct.debug_view** %4, align 8
  %61 = getelementptr inbounds %struct.debug_view, %struct.debug_view* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = call %struct.dentry* @debugfs_create_file(i32 %62, i32 %63, i32 %66, %struct.TYPE_4__* %67, i32* @debug_file_ops)
  store %struct.dentry* %68, %struct.dentry** %6, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @spin_lock_irqsave(i32* %70, i64 %71)
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %88, %59
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @DEBUG_MAX_VIEWS, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %73
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load %struct.debug_view**, %struct.debug_view*** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.debug_view*, %struct.debug_view** %80, i64 %82
  %84 = load %struct.debug_view*, %struct.debug_view** %83, align 8
  %85 = icmp ne %struct.debug_view* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %77
  br label %91

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %73

91:                                               ; preds = %86, %73
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @DEBUG_MAX_VIEWS, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.debug_view*, %struct.debug_view** %4, align 8
  %100 = getelementptr inbounds %struct.debug_view, %struct.debug_view* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %101, i32 %102)
  store i32 -1, i32* %8, align 4
  br label %119

104:                                              ; preds = %91
  %105 = load %struct.debug_view*, %struct.debug_view** %4, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load %struct.debug_view**, %struct.debug_view*** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.debug_view*, %struct.debug_view** %108, i64 %110
  store %struct.debug_view* %105, %struct.debug_view** %111, align 8
  %112 = load %struct.dentry*, %struct.dentry** %6, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load %struct.dentry**, %struct.dentry*** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.dentry*, %struct.dentry** %115, i64 %117
  store %struct.dentry* %112, %struct.dentry** %118, align 8
  br label %119

119:                                              ; preds = %104, %95
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i64, i64* %5, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load %struct.dentry*, %struct.dentry** %6, align 8
  %128 = call i32 @debugfs_remove(%struct.dentry* %127)
  br label %129

129:                                              ; preds = %126, %119
  br label %130

130:                                              ; preds = %129, %12
  %131 = load i32, i32* %8, align 4
  ret i32 %131
}

declare dso_local %struct.dentry* @debugfs_create_file(i32, i32, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @debugfs_remove(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
