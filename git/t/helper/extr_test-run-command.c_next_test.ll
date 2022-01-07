; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-run-command.c_next_test.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-run-command.c_next_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32 }
%struct.strbuf = type { i32 }
%struct.testsuite = type { i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-V\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"--write-junit-xml\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Output of '%s':\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.child_process*, %struct.strbuf*, i8*, i8**)* @next_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_test(%struct.child_process* %0, %struct.strbuf* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.child_process*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.testsuite*, align 8
  %11 = alloca i8*, align 8
  store %struct.child_process* %0, %struct.child_process** %6, align 8
  store %struct.strbuf* %1, %struct.strbuf** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.testsuite*
  store %struct.testsuite* %13, %struct.testsuite** %10, align 8
  %14 = load %struct.testsuite*, %struct.testsuite** %10, align 8
  %15 = getelementptr inbounds %struct.testsuite, %struct.testsuite* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.testsuite*, %struct.testsuite** %10, align 8
  %18 = getelementptr inbounds %struct.testsuite, %struct.testsuite* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %16, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %98

23:                                               ; preds = %4
  %24 = load %struct.testsuite*, %struct.testsuite** %10, align 8
  %25 = getelementptr inbounds %struct.testsuite, %struct.testsuite* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load %struct.testsuite*, %struct.testsuite** %10, align 8
  %29 = getelementptr inbounds %struct.testsuite, %struct.testsuite* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %30
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %11, align 8
  %35 = load %struct.child_process*, %struct.child_process** %6, align 8
  %36 = getelementptr inbounds %struct.child_process, %struct.child_process* %35, i32 0, i32 0
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @argv_array_pushl(i32* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %37, i32* null)
  %39 = load %struct.testsuite*, %struct.testsuite** %10, align 8
  %40 = getelementptr inbounds %struct.testsuite, %struct.testsuite* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %23
  %44 = load %struct.child_process*, %struct.child_process** %6, align 8
  %45 = getelementptr inbounds %struct.child_process, %struct.child_process* %44, i32 0, i32 0
  %46 = call i32 @argv_array_push(i32* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %23
  %48 = load %struct.testsuite*, %struct.testsuite** %10, align 8
  %49 = getelementptr inbounds %struct.testsuite, %struct.testsuite* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.child_process*, %struct.child_process** %6, align 8
  %54 = getelementptr inbounds %struct.child_process, %struct.child_process* %53, i32 0, i32 0
  %55 = call i32 @argv_array_push(i32* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.testsuite*, %struct.testsuite** %10, align 8
  %58 = getelementptr inbounds %struct.testsuite, %struct.testsuite* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.child_process*, %struct.child_process** %6, align 8
  %63 = getelementptr inbounds %struct.child_process, %struct.child_process* %62, i32 0, i32 0
  %64 = call i32 @argv_array_push(i32* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %56
  %66 = load %struct.testsuite*, %struct.testsuite** %10, align 8
  %67 = getelementptr inbounds %struct.testsuite, %struct.testsuite* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.child_process*, %struct.child_process** %6, align 8
  %72 = getelementptr inbounds %struct.child_process, %struct.child_process* %71, i32 0, i32 0
  %73 = call i32 @argv_array_push(i32* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %65
  %75 = load %struct.testsuite*, %struct.testsuite** %10, align 8
  %76 = getelementptr inbounds %struct.testsuite, %struct.testsuite* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.child_process*, %struct.child_process** %6, align 8
  %81 = getelementptr inbounds %struct.child_process, %struct.child_process* %80, i32 0, i32 0
  %82 = call i32 @argv_array_push(i32* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %83

83:                                               ; preds = %79, %74
  %84 = load %struct.testsuite*, %struct.testsuite** %10, align 8
  %85 = getelementptr inbounds %struct.testsuite, %struct.testsuite* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.child_process*, %struct.child_process** %6, align 8
  %90 = getelementptr inbounds %struct.child_process, %struct.child_process* %89, i32 0, i32 0
  %91 = call i32 @argv_array_push(i32* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %83
  %93 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 @strbuf_addf(%struct.strbuf* %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %94)
  %96 = load i8*, i8** %11, align 8
  %97 = load i8**, i8*** %9, align 8
  store i8* %96, i8** %97, align 8
  store i32 1, i32* %5, align 4
  br label %98

98:                                               ; preds = %92, %22
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @argv_array_push(i32*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
