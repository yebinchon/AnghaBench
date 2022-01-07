; ModuleID = '/home/carl/AnghaBench/git/extr_pack-write.c_encode_in_pack_object_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-write.c_encode_in_pack_object_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OBJ_COMMIT = common dso_local global i32 0, align 4
@OBJ_REF_DELTA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"bad type %d\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"object size is too enormous to format\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encode_in_pack_object_header(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @OBJ_COMMIT, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @OBJ_REF_DELTA, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 %22, 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 15
  %26 = or i32 %23, %25
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %10, align 1
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %39, %21
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i8, i8* %10, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %41, 128
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 8
  store i8 %43, i8* %44, align 1
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 127
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %10, align 1
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 7
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %30

53:                                               ; preds = %30
  %54 = load i8, i8* %10, align 1
  %55 = load i8*, i8** %5, align 8
  store i8 %54, i8* %55, align 1
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local i32 @die(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
