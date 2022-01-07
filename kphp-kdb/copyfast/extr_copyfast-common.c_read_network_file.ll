; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-common.c_read_network_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-common.c_read_network_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"can not open network file (error %m)\0A\00", align 1
@rules_num = common dso_local global i32 0, align 4
@MAX_RULES = common dso_local global i32 0, align 4
@network = common dso_local global i32* null, align 8
@verbosity = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Read %d rules from network description file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_network_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [256 x i8], align 16
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32* @fopen(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %52

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %27, %13
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @feof(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = load i32, i32* @rules_num, align 4
  %21 = load i32, i32* @MAX_RULES, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @fclose(i32* %24)
  %26 = load i32, i32* @rules_num, align 4
  store i32 %26, i32* %2, align 4
  br label %52

27:                                               ; preds = %19
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @fgets(i8* %28, i32 255, i32* %29)
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %32 = load i32*, i32** @network, align 8
  %33 = load i32, i32* @rules_num, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i64 @read_rule(i8* %31, i32* %35)
  %37 = load i32, i32* @rules_num, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* @rules_num, align 4
  br label %14

41:                                               ; preds = %14
  %42 = load i64, i64* @verbosity, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* @stderr, align 4
  %46 = load i32, i32* @rules_num, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @fclose(i32* %49)
  %51 = load i32, i32* @rules_num, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %23, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @read_rule(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
