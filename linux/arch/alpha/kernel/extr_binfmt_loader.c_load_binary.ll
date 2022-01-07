; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_binfmt_loader.c_load_binary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_binfmt_loader.c_load_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i64, i32, %struct.file*, %struct.TYPE_5__*, i64 }
%struct.file = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.exec = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ENOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"/sbin/loader\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linux_binprm*)* @load_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_binary(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca %struct.exec*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  %8 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %9 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.exec*
  store %struct.exec* %11, %struct.exec** %4, align 8
  %12 = load %struct.exec*, %struct.exec** %4, align 8
  %13 = getelementptr inbounds %struct.exec, %struct.exec* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 387
  br i1 %16, label %24, label %17

17:                                               ; preds = %1
  %18 = load %struct.exec*, %struct.exec** %4, align 8
  %19 = getelementptr inbounds %struct.exec, %struct.exec* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 12288
  %23 = icmp ne i32 %22, 12288
  br i1 %23, label %24, label %27

24:                                               ; preds = %17, %1
  %25 = load i32, i32* @ENOEXEC, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %86

27:                                               ; preds = %17
  %28 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %29 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOEXEC, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %86

35:                                               ; preds = %27
  %36 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %37 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %36, i32 0, i32 2
  %38 = load %struct.file*, %struct.file** %37, align 8
  %39 = call i32 @allow_write_access(%struct.file* %38)
  %40 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %41 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %40, i32 0, i32 2
  %42 = load %struct.file*, %struct.file** %41, align 8
  %43 = call i32 @fput(%struct.file* %42)
  %44 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %45 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %44, i32 0, i32 2
  store %struct.file* null, %struct.file** %45, align 8
  %46 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %47 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %46, i32 0, i32 3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = sub i64 %51, 8
  store i64 %52, i64* %5, align 8
  %53 = call %struct.file* @open_exec(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.file* %53, %struct.file** %6, align 8
  %54 = load %struct.file*, %struct.file** %6, align 8
  %55 = call i32 @PTR_ERR(%struct.file* %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.file*, %struct.file** %6, align 8
  %57 = call i64 @IS_ERR(%struct.file* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %35
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %86

61:                                               ; preds = %35
  %62 = load %struct.exec*, %struct.exec** %4, align 8
  %63 = getelementptr inbounds %struct.exec, %struct.exec* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %66, 4294967296
  %68 = zext i1 %67 to i32
  %69 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %70 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.file*, %struct.file** %6, align 8
  %72 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %73 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %72, i32 0, i32 2
  store %struct.file* %71, %struct.file** %73, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %76 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %78 = call i32 @prepare_binprm(%struct.linux_binprm* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %61
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %86

83:                                               ; preds = %61
  %84 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %85 = call i32 @search_binary_handler(%struct.linux_binprm* %84)
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %83, %81, %59, %32, %24
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @allow_write_access(%struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local %struct.file* @open_exec(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @prepare_binprm(%struct.linux_binprm*) #1

declare dso_local i32 @search_binary_handler(%struct.linux_binprm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
