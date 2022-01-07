; ModuleID = '/home/carl/AnghaBench/lede/package/network/utils/owipcalc/src/extr_owipcalc.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/utils/owipcalc/src/extr_owipcalc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.cidr = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unknown operation '%s'\0A\00", align 1
@printed = common dso_local global i32 0, align 4
@stack = common dso_local global %struct.TYPE_4__* null, align 8
@AF_INET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.cidr*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 2
  store i8** %10, i8*** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @usage(i8* %16)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strchr(i8* %21, i8 signext 58)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call %struct.cidr* @cidr_parse6(i8* %27)
  br label %34

29:                                               ; preds = %18
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call %struct.cidr* @cidr_parse4(i8* %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi %struct.cidr* [ %28, %24 ], [ %33, %29 ]
  store %struct.cidr* %35, %struct.cidr** %8, align 8
  %36 = load %struct.cidr*, %struct.cidr** %8, align 8
  %37 = icmp ne %struct.cidr* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @usage(i8* %41)
  br label %43

43:                                               ; preds = %38, %34
  %44 = load %struct.cidr*, %struct.cidr** %8, align 8
  %45 = call i32 @cidr_push(%struct.cidr* %44)
  br label %46

46:                                               ; preds = %49, %43
  %47 = call i64 @runop(i8*** %7, i32* %6)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %46

50:                                               ; preds = %46
  %51 = load i8**, i8*** %7, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8**, i8*** %7, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = call i32 @exit(i32 6) #3
  unreachable

60:                                               ; preds = %50
  %61 = load i32, i32* @printed, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stack, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AF_INET, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stack, align 8
  %74 = call i32 @cidr_print4(%struct.TYPE_4__* %73)
  br label %78

75:                                               ; preds = %66
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stack, align 8
  %77 = call i32 @cidr_print6(%struct.TYPE_4__* %76)
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %63, %60
  %80 = call i32 @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @exit(i32 %81) #3
  unreachable
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local %struct.cidr* @cidr_parse6(i8*) #1

declare dso_local %struct.cidr* @cidr_parse4(i8*) #1

declare dso_local i32 @cidr_push(%struct.cidr*) #1

declare dso_local i64 @runop(i8***, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @cidr_print4(%struct.TYPE_4__*) #1

declare dso_local i32 @cidr_print6(%struct.TYPE_4__*) #1

declare dso_local i32 @qprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
