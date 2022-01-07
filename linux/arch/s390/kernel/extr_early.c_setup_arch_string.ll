; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_early.c_setup_arch_string.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_early.c_setup_arch_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysinfo_1_1_1 = type { i8*, i8*, i8*, i8*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i8* }
%struct.sysinfo_3_2_2 = type { i8*, i8*, i8*, i8*, %struct.TYPE_2__*, i64 }

@sysinfo_page = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%-16.16s %-4.4s %-16.16s %-16.16s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%-16.16s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MACHINE_IS_LPAR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"LPAR\00", align 1
@MACHINE_IS_VM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"z/VM\00", align 1
@MACHINE_IS_KVM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"KVM\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_arch_string() #0 {
  %1 = alloca %struct.sysinfo_1_1_1*, align 8
  %2 = alloca %struct.sysinfo_3_2_2*, align 8
  %3 = alloca [80 x i8], align 16
  %4 = alloca [17 x i8], align 16
  store %struct.sysinfo_1_1_1* bitcast (i32* @sysinfo_page to %struct.sysinfo_1_1_1*), %struct.sysinfo_1_1_1** %1, align 8
  store %struct.sysinfo_3_2_2* bitcast (i32* @sysinfo_page to %struct.sysinfo_3_2_2*), %struct.sysinfo_3_2_2** %2, align 8
  %5 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %1, align 8
  %6 = bitcast %struct.sysinfo_1_1_1* %5 to %struct.sysinfo_3_2_2*
  %7 = call i64 @stsi(%struct.sysinfo_3_2_2* %6, i32 1, i32 1, i32 1)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %92

10:                                               ; preds = %0
  %11 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %1, align 8
  %12 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @EBCASC(i8* %13, i32 8)
  %15 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %1, align 8
  %16 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @EBCASC(i8* %17, i32 8)
  %19 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %1, align 8
  %20 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @EBCASC(i8* %21, i32 8)
  %23 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %1, align 8
  %24 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @EBCASC(i8* %25, i32 8)
  %27 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %28 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %1, align 8
  %29 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %1, align 8
  %32 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %1, align 8
  %35 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %1, align 8
  %38 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %33, i8* %36, i8* %39)
  %41 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %42 = call i32 @strim_all(i8* %41)
  %43 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %2, align 8
  %44 = call i64 @stsi(%struct.sysinfo_3_2_2* %43, i32 3, i32 2, i32 2)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %10
  %47 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %2, align 8
  %48 = getelementptr inbounds %struct.sysinfo_3_2_2, %struct.sysinfo_3_2_2* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %2, align 8
  %53 = getelementptr inbounds %struct.sysinfo_3_2_2, %struct.sysinfo_3_2_2* %52, i32 0, i32 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @EBCASC(i8* %57, i32 8)
  %59 = getelementptr inbounds [17 x i8], [17 x i8]* %4, i64 0, i64 0
  %60 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %2, align 8
  %61 = getelementptr inbounds %struct.sysinfo_3_2_2, %struct.sysinfo_3_2_2* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  %67 = getelementptr inbounds [17 x i8], [17 x i8]* %4, i64 0, i64 0
  %68 = call i32 @strim_all(i8* %67)
  br label %88

69:                                               ; preds = %46, %10
  %70 = getelementptr inbounds [17 x i8], [17 x i8]* %4, i64 0, i64 0
  %71 = load i64, i64* @MACHINE_IS_LPAR, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %85

74:                                               ; preds = %69
  %75 = load i64, i64* @MACHINE_IS_VM, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %83

78:                                               ; preds = %74
  %79 = load i64, i64* @MACHINE_IS_KVM, align 8
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  br label %83

83:                                               ; preds = %78, %77
  %84 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %77 ], [ %82, %78 ]
  br label %85

85:                                               ; preds = %83, %73
  %86 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %73 ], [ %84, %83 ]
  %87 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %85, %51
  %89 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %90 = getelementptr inbounds [17 x i8], [17 x i8]* %4, i64 0, i64 0
  %91 = call i32 @dump_stack_set_arch_desc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %89, i8* %90)
  br label %92

92:                                               ; preds = %88, %9
  ret void
}

declare dso_local i64 @stsi(%struct.sysinfo_3_2_2*, i32, i32, i32) #1

declare dso_local i32 @EBCASC(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @strim_all(i8*) #1

declare dso_local i32 @dump_stack_set_arch_desc(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
