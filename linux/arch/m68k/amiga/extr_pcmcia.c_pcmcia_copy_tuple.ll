; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/amiga/extr_pcmcia.c_pcmcia_copy_tuple.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/amiga/extr_pcmcia.c_pcmcia_copy_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gayle_attribute = common dso_local global i8** null, align 8
@CISTPL_END = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmcia_copy_tuple(i8 zeroext %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load i8**, i8*** @gayle_attribute, align 8
  %15 = load i32, i32* %11, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = ptrtoint i8* %18 to i8
  store i8 %19, i8* %8, align 1
  br label %20

20:                                               ; preds = %76, %3
  %21 = load i8, i8* %8, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @CISTPL_END, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 65536
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi i1 [ false, %20 ], [ %28, %26 ]
  br i1 %30, label %31, label %87

31:                                               ; preds = %29
  %32 = load i8**, i8*** @gayle_attribute, align 8
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %32, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = ptrtoint i8* %37 to i32
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* %12, align 4
  %40 = load i8, i8* %8, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* %5, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %31
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  br label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %12, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %71, %53
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i8**, i8*** @gayle_attribute, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = shl i32 %62, 1
  %64 = add nsw i32 %61, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %60, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = ptrtoint i8* %67 to i8
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %9, align 8
  store i8 %68, i8* %69, align 1
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %55

74:                                               ; preds = %55
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %4, align 4
  br label %88

76:                                               ; preds = %31
  %77 = load i32, i32* %12, align 4
  %78 = shl i32 %77, 1
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %11, align 4
  %81 = load i8**, i8*** @gayle_attribute, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = ptrtoint i8* %85 to i8
  store i8 %86, i8* %8, align 1
  br label %20

87:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %74
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
