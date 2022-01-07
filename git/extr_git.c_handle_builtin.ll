; ModuleID = '/home/carl/AnghaBench/git/extr_git.c_handle_builtin.c'
source_filename = "/home/carl/AnghaBench/git/extr_git.c_handle_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i8** }
%struct.cmd_struct = type { i32 }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"--exclude-guides\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @handle_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_builtin(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.argv_array, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cmd_struct*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = bitcast %struct.argv_array* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 8, i1 false)
  %10 = load i8**, i8*** %4, align 8
  %11 = call i32 @strip_extension(i8** %10)
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %55

17:                                               ; preds = %2
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %55, label %23

23:                                               ; preds = %17
  %24 = load i8**, i8*** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  store i8* %26, i8** %28, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %29 = load i8**, i8*** %4, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %47, %23
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i8**, i8*** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @argv_array_push(%struct.argv_array* %5, i8* %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %35
  %45 = call i32 @argv_array_push(%struct.argv_array* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %31

50:                                               ; preds = %31
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  %53 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %5, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  store i8** %54, i8*** %4, align 8
  br label %55

55:                                               ; preds = %50, %17, %2
  %56 = load i8*, i8** %6, align 8
  %57 = call %struct.cmd_struct* @get_builtin(i8* %56)
  store %struct.cmd_struct* %57, %struct.cmd_struct** %7, align 8
  %58 = load %struct.cmd_struct*, %struct.cmd_struct** %7, align 8
  %59 = icmp ne %struct.cmd_struct* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.cmd_struct*, %struct.cmd_struct** %7, align 8
  %62 = load i32, i32* %3, align 4
  %63 = load i8**, i8*** %4, align 8
  %64 = call i32 @run_builtin(%struct.cmd_struct* %61, i32 %62, i8** %63)
  %65 = call i32 @exit(i32 %64) #4
  unreachable

66:                                               ; preds = %55
  %67 = call i32 @argv_array_clear(%struct.argv_array* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strip_extension(i8**) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #2

declare dso_local %struct.cmd_struct* @get_builtin(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @run_builtin(%struct.cmd_struct*, i32, i8**) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
