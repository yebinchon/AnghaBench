; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_hl.c_HL_TextureContents.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_hl.c_HL_TextureContents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"sky\00", align 1
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"!lava\00", align 1
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"!slime\00", align 1
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HL_TextureContents(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @Q_strncasecmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @CONTENTS_SOLID, align 4
  store i32 %8, i32* %2, align 4
  br label %33

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = call i32 @Q_strncasecmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @CONTENTS_LAVA, align 4
  store i32 %15, i32* %2, align 4
  br label %33

16:                                               ; preds = %9
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = call i32 @Q_strncasecmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @CONTENTS_SLIME, align 4
  store i32 %22, i32* %2, align 4
  br label %33

23:                                               ; preds = %16
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 33
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @CONTENTS_WATER, align 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @CONTENTS_SOLID, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %29, %21, %14, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @Q_strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
