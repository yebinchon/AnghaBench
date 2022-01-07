; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ftrace.c_ftrace_make_nop_check.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ftrace.c_ftrace_make_nop_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dyn_ftrace = type { i64, i32 }
%struct.ftrace_call_insn = type { i32, i32, i32, i32 }
%struct.ftrace_orig_insn = type { i32, i32 }

@MCOUNT_INSN_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@FTRACE_FL_CONVERTED = common dso_local global i32 0, align 4
@ftrace_call_code = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ftrace_orig_code = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dyn_ftrace*, i64)* @ftrace_make_nop_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftrace_make_nop_check(%struct.dyn_ftrace* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dyn_ftrace*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ftrace_call_insn*, align 8
  %11 = alloca %struct.ftrace_call_insn*, align 8
  %12 = alloca %struct.ftrace_orig_insn*, align 8
  %13 = alloca %struct.ftrace_orig_insn*, align 8
  store %struct.dyn_ftrace* %0, %struct.dyn_ftrace** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i32, i32* @MCOUNT_INSN_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 8
  store i64 %15, i64* %7, align 8
  %18 = load %struct.dyn_ftrace*, %struct.dyn_ftrace** %4, align 8
  %19 = getelementptr inbounds %struct.dyn_ftrace, %struct.dyn_ftrace* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load i32, i32* @MCOUNT_INSN_SIZE, align 4
  %24 = call i64 @probe_kernel_read(i8* %17, i8* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EFAULT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %92

29:                                               ; preds = %2
  %30 = load %struct.dyn_ftrace*, %struct.dyn_ftrace** %4, align 8
  %31 = getelementptr inbounds %struct.dyn_ftrace, %struct.dyn_ftrace* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FTRACE_FL_CONVERTED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %69

36:                                               ; preds = %29
  %37 = load i64, i64* @ftrace_call_code, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = bitcast i8* %38 to %struct.ftrace_call_insn*
  store %struct.ftrace_call_insn* %39, %struct.ftrace_call_insn** %10, align 8
  %40 = bitcast i8* %17 to %struct.ftrace_call_insn*
  store %struct.ftrace_call_insn* %40, %struct.ftrace_call_insn** %11, align 8
  %41 = load %struct.ftrace_call_insn*, %struct.ftrace_call_insn** %11, align 8
  %42 = getelementptr inbounds %struct.ftrace_call_insn, %struct.ftrace_call_insn* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ftrace_call_insn*, %struct.ftrace_call_insn** %10, align 8
  %45 = getelementptr inbounds %struct.ftrace_call_insn, %struct.ftrace_call_insn* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ftrace_call_insn*, %struct.ftrace_call_insn** %11, align 8
  %47 = getelementptr inbounds %struct.ftrace_call_insn, %struct.ftrace_call_insn* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ftrace_call_insn*, %struct.ftrace_call_insn** %10, align 8
  %50 = getelementptr inbounds %struct.ftrace_call_insn, %struct.ftrace_call_insn* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ftrace_call_insn*, %struct.ftrace_call_insn** %11, align 8
  %52 = getelementptr inbounds %struct.ftrace_call_insn, %struct.ftrace_call_insn* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ftrace_call_insn*, %struct.ftrace_call_insn** %10, align 8
  %55 = getelementptr inbounds %struct.ftrace_call_insn, %struct.ftrace_call_insn* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ftrace_call_insn*, %struct.ftrace_call_insn** %11, align 8
  %57 = getelementptr inbounds %struct.ftrace_call_insn, %struct.ftrace_call_insn* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ftrace_call_insn*, %struct.ftrace_call_insn** %10, align 8
  %60 = getelementptr inbounds %struct.ftrace_call_insn, %struct.ftrace_call_insn* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i64, i64* @ftrace_call_code, align 8
  %62 = load i32, i32* @MCOUNT_INSN_SIZE, align 4
  %63 = call i64 @memcmp(i8* %17, i64 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %36
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %92

68:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %92

69:                                               ; preds = %29
  %70 = load i64, i64* @ftrace_orig_code, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = bitcast i8* %71 to %struct.ftrace_orig_insn*
  store %struct.ftrace_orig_insn* %72, %struct.ftrace_orig_insn** %12, align 8
  %73 = bitcast i8* %17 to %struct.ftrace_orig_insn*
  store %struct.ftrace_orig_insn* %73, %struct.ftrace_orig_insn** %13, align 8
  %74 = load %struct.ftrace_orig_insn*, %struct.ftrace_orig_insn** %13, align 8
  %75 = getelementptr inbounds %struct.ftrace_orig_insn, %struct.ftrace_orig_insn* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ftrace_orig_insn*, %struct.ftrace_orig_insn** %12, align 8
  %78 = getelementptr inbounds %struct.ftrace_orig_insn, %struct.ftrace_orig_insn* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ftrace_orig_insn*, %struct.ftrace_orig_insn** %13, align 8
  %80 = getelementptr inbounds %struct.ftrace_orig_insn, %struct.ftrace_orig_insn* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ftrace_orig_insn*, %struct.ftrace_orig_insn** %12, align 8
  %83 = getelementptr inbounds %struct.ftrace_orig_insn, %struct.ftrace_orig_insn* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load i64, i64* @ftrace_orig_code, align 8
  %85 = load i32, i32* @MCOUNT_INSN_SIZE, align 4
  %86 = call i64 @memcmp(i8* %17, i64 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %69
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %92

91:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %92

92:                                               ; preds = %91, %88, %68, %65, %26
  %93 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @probe_kernel_read(i8*, i8*, i32) #2

declare dso_local i64 @memcmp(i8*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
