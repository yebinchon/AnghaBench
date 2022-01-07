; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_humanise.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_humanise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%u.%2.2u GiB\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%u.%2.2u GiB/s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%u.%2.2u MiB\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%u.%2.2u MiB/s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%u.%2.2u KiB\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%u.%2.2u KiB/s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%u byte\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%u bytes\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%u byte/s\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"%u bytes/s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i32, i32)* @strbuf_humanise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strbuf_humanise(%struct.strbuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 1073741824
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %19

17:                                               ; preds = %11
  %18 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 30
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 1073741823
  %25 = udiv i32 %24, 10737419
  %26 = call i32 (%struct.strbuf*, i32, i32, ...) @strbuf_addf(%struct.strbuf* %12, i32 %20, i32 %22, i32 %25)
  br label %87

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %28, 1048576
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 5243
  store i32 %32, i32* %7, align 4
  %33 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %40

38:                                               ; preds = %30
  %39 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load i32, i32* %7, align 4
  %43 = lshr i32 %42, 20
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 1048575
  %46 = mul i32 %45, 100
  %47 = lshr i32 %46, 20
  %48 = call i32 (%struct.strbuf*, i32, i32, ...) @strbuf_addf(%struct.strbuf* %33, i32 %41, i32 %43, i32 %47)
  br label %86

49:                                               ; preds = %27
  %50 = load i32, i32* %5, align 4
  %51 = icmp sgt i32 %50, 1024
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 5
  store i32 %54, i32* %8, align 4
  %55 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %62

60:                                               ; preds = %52
  %61 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = load i32, i32* %8, align 4
  %65 = lshr i32 %64, 10
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, 1023
  %68 = mul i32 %67, 100
  %69 = lshr i32 %68, 10
  %70 = call i32 (%struct.strbuf*, i32, i32, ...) @strbuf_addf(%struct.strbuf* %55, i32 %63, i32 %65, i32 %69)
  br label %85

71:                                               ; preds = %49
  %72 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @Q_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %76)
  br label %81

78:                                               ; preds = %71
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @Q_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi i32 [ %77, %75 ], [ %80, %78 ]
  %83 = load i32, i32* %5, align 4
  %84 = call i32 (%struct.strbuf*, i32, i32, ...) @strbuf_addf(%struct.strbuf* %72, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %62
  br label %86

86:                                               ; preds = %85, %40
  br label %87

87:                                               ; preds = %86, %19
  ret void
}

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @Q_(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
