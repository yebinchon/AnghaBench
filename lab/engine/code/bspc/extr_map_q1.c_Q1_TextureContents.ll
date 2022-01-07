; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q1.c_Q1_TextureContents.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q1.c_Q1_TextureContents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"clip\00", align 1
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"lava\00", align 1
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"slime\00", align 1
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"sky\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Q1_TextureContents(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @Q_strcasecmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @CONTENTS_SOLID, align 4
  store i32 %8, i32* %2, align 4
  br label %39

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 42
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = call i32 @Q_strncasecmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @CONTENTS_LAVA, align 4
  store i32 %21, i32* %2, align 4
  br label %39

22:                                               ; preds = %15
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = call i32 @Q_strncasecmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @CONTENTS_SLIME, align 4
  store i32 %28, i32* %2, align 4
  br label %39

29:                                               ; preds = %22
  %30 = load i32, i32* @CONTENTS_WATER, align 4
  store i32 %30, i32* %2, align 4
  br label %39

31:                                               ; preds = %9
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @Q_strncasecmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @CONTENTS_SOLID, align 4
  store i32 %36, i32* %2, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @CONTENTS_SOLID, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %35, %29, %27, %20, %7
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @Q_strcasecmp(i8*, i8*) #1

declare dso_local i32 @Q_strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
