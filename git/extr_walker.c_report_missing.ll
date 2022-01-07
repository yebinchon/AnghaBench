; ModuleID = '/home/carl/AnghaBench/git/extr_walker.c_report_missing.c'
source_filename = "/home/carl/AnghaBench/git/extr_walker.c_report_missing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot obtain needed %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@current_commit_oid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"while processing commit %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object*)* @report_missing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_missing(%struct.object* %0) #0 {
  %2 = alloca %struct.object*, align 8
  store %struct.object* %0, %struct.object** %2, align 8
  %3 = load i32, i32* @stderr, align 4
  %4 = load %struct.object*, %struct.object** %2, align 8
  %5 = getelementptr inbounds %struct.object, %struct.object* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.object*, %struct.object** %2, align 8
  %10 = getelementptr inbounds %struct.object, %struct.object* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call i8* @type_name(i64 %11)
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi i8* [ %12, %8 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %13 ]
  %16 = load %struct.object*, %struct.object** %2, align 8
  %17 = getelementptr inbounds %struct.object, %struct.object* %16, i32 0, i32 0
  %18 = call i8* @oid_to_hex(i32* %17)
  %19 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %18)
  %20 = call i32 @is_null_oid(i32* @current_commit_oid)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @stderr, align 4
  %24 = call i8* @oid_to_hex(i32* @current_commit_oid)
  %25 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %22, %14
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @type_name(i64) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @is_null_oid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
