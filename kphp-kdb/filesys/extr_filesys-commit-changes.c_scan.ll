; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-commit-changes.c_scan.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-commit-changes.c_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@faults = common dso_local global i64 0, align 8
@status = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"compute_tmp_dir_name fail.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Temporary directory name: %s\0A\00", align 1
@tmp_dir = common dso_local global double 0.000000e+00, align 8
@use_clone = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"clone_file (%s, %s) returns error code %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Cloning master copy time = %.6lf seconds.\0A\00", align 1
@copy_file_cloning_mode = common dso_local global i32 0, align 4
@copy_file = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"mkdir (%s, 0770) failed. %m\0A\00", align 1
@copy_file_po_mode = common dso_local global i32 0, align 4
@old_dir_length = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@old_dir = common dso_local global i32 0, align 4
@new_dir_length = common dso_local global i32 0, align 4
@new_dir = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"delete_file (%s) returns error code %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"rename (%s, %s) returns error code %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"rmdir (%s) failed. %m\0A\00", align 1
@events = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* @faults, align 8
  %10 = load i64, i64* @status, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %61, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @compute_tmp_dir_name(i8* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %12
  %20 = load double, double* @tmp_dir, align 8
  %21 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), double %20)
  %22 = load i64, i64* @use_clone, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = call double (...) @mytime()
  %26 = fneg double %25
  store double %26, double* %6, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load double, double* @tmp_dir, align 8
  %29 = call i32 @clone_file(i8* %27, double %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i8*, i8** %4, align 8
  %34 = load double, double* @tmp_dir, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %33, double %34, i32 %35)
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %24
  %39 = call double (...) @mytime()
  %40 = load double, double* %6, align 8
  %41 = fadd double %40, %39
  store double %41, double* %6, align 8
  %42 = load double, double* %6, align 8
  %43 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), double %42)
  %44 = load i32, i32* @copy_file_cloning_mode, align 4
  store i32 %44, i32* @copy_file, align 4
  br label %59

45:                                               ; preds = %19
  %46 = load double, double* @tmp_dir, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @pending_operations_init(double %46, i8* %47)
  %49 = call i32 @pending_operations_reset(i32 0)
  %50 = load double, double* @tmp_dir, align 8
  %51 = call i64 @mkdir(double %50, i32 504)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load double, double* @tmp_dir, align 8
  %55 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), double %54)
  %56 = call i32 @exit(i32 1) #3
  unreachable

57:                                               ; preds = %45
  %58 = load i32, i32* @copy_file_po_mode, align 4
  store i32 %58, i32* @copy_file, align 4
  br label %59

59:                                               ; preds = %57, %38
  %60 = call i32 (...) @do_transaction_begin()
  br label %61

61:                                               ; preds = %59, %2
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @strlen(i8* %62)
  store i32 %63, i32* @old_dir_length, align 4
  %64 = load i32, i32* @old_dir_length, align 4
  %65 = load i32, i32* @PATH_MAX, align 4
  %66 = sub nsw i32 %65, 1
  %67 = icmp slt i32 %64, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i32, i32* @old_dir, align 4
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @strcpy(i32 %70, i8* %71)
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @strlen(i8* %73)
  store i32 %74, i32* @new_dir_length, align 4
  %75 = load i32, i32* @new_dir_length, align 4
  %76 = load i32, i32* @PATH_MAX, align 4
  %77 = sub nsw i32 %76, 1
  %78 = icmp slt i32 %75, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i32, i32* @new_dir, align 4
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @strcpy(i32 %81, i8* %82)
  %84 = load i32, i32* @old_dir_length, align 4
  %85 = load i32, i32* @new_dir_length, align 4
  %86 = call i32 @rec_scan(i32 %84, i32 %85, i32* %8)
  %87 = load i64, i64* @status, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %128, label %89

89:                                               ; preds = %61
  %90 = call i32 (...) @do_transaction_end()
  %91 = load i64, i64* @faults, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* @use_clone, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %93
  %97 = load i8*, i8** %4, align 8
  %98 = call i32 @delete_file(i8* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i8*, i8** %4, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %102, i32 %103)
  store i32 -1, i32* %3, align 4
  br label %143

105:                                              ; preds = %96
  %106 = load double, double* @tmp_dir, align 8
  %107 = load i8*, i8** %4, align 8
  %108 = call i32 @rename(double %106, i8* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load double, double* @tmp_dir, align 8
  %113 = load i8*, i8** %4, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), double %112, i8* %113, i32 %114)
  store i32 -2, i32* %3, align 4
  br label %143

116:                                              ; preds = %105
  br label %126

117:                                              ; preds = %93
  %118 = call i32 (...) @pending_operations_apply()
  %119 = load double, double* @tmp_dir, align 8
  %120 = call i64 @rmdir(double %119)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load double, double* @tmp_dir, align 8
  %124 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), double %123)
  br label %125

125:                                              ; preds = %122, %117
  br label %126

126:                                              ; preds = %125, %116
  br label %127

127:                                              ; preds = %126, %89
  br label %128

128:                                              ; preds = %127, %61
  %129 = load i64, i64* @faults, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load i64, i64* @status, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i64, i64* @events, align 8
  %136 = icmp sgt i64 %135, 0
  br label %137

137:                                              ; preds = %134, %131
  %138 = phi i1 [ true, %131 ], [ %136, %134 ]
  br label %139

139:                                              ; preds = %137, %128
  %140 = phi i1 [ false, %128 ], [ %138, %137 ]
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 0, i32 -1
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %139, %111, %101
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i64 @compute_tmp_dir_name(i8*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @vkprintf(i32, i8*, double) #1

declare dso_local double @mytime(...) #1

declare dso_local i32 @clone_file(i8*, double) #1

declare dso_local i32 @pending_operations_init(double, i8*) #1

declare dso_local i32 @pending_operations_reset(i32) #1

declare dso_local i64 @mkdir(double, i32) #1

declare dso_local i32 @do_transaction_begin(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @rec_scan(i32, i32, i32*) #1

declare dso_local i32 @do_transaction_end(...) #1

declare dso_local i32 @delete_file(i8*) #1

declare dso_local i32 @rename(double, i8*) #1

declare dso_local i32 @pending_operations_apply(...) #1

declare dso_local i64 @rmdir(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
