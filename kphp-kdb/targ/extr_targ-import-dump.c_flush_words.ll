; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_flush_words.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_flush_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cword = type { i32, i32, i32 }

@Tc = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"sorting words: %d words, %ld chars\0A\00", align 1
@Tw = common dso_local global i64 0, align 8
@TS = common dso_local global i64 0, align 8
@TL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @flush_words to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_words() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cword*, align 8
  %5 = load i32, i32* @Tc, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %87

8:                                                ; preds = %0
  %9 = load i64, i64* @verbosity, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i32, i32* @stderr, align 4
  %13 = load i32, i32* @Tc, align 4
  %14 = load i64, i64* @Tw, align 8
  %15 = load i64, i64* @TS, align 8
  %16 = sub nsw i64 %14, %15
  %17 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16)
  br label %18

18:                                               ; preds = %11, %8
  %19 = load i32, i32* @Tc, align 4
  %20 = sub nsw i32 %19, 1
  %21 = call i32 @asort(i32 0, i32 %20)
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %58, %18
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @Tc, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %82

26:                                               ; preds = %22
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  %29 = load i32*, i32** @TL, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strlen(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %55, %26
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @Tc, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i32*, i32** @TL, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** @TL, align 8
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strcmp(i32 %44, i32 %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %39, %35
  %54 = phi i1 [ false, %35 ], [ %52, %39 ]
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %35

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 6, %59
  %61 = call %struct.cword* @write_alloc(i32 %60)
  store %struct.cword* %61, %struct.cword** %4, align 8
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* %1, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load %struct.cword*, %struct.cword** %4, align 8
  %66 = getelementptr inbounds %struct.cword, %struct.cword* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.cword*, %struct.cword** %4, align 8
  %69 = getelementptr inbounds %struct.cword, %struct.cword* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.cword*, %struct.cword** %4, align 8
  %71 = getelementptr inbounds %struct.cword, %struct.cword* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** @TL, align 8
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 @memcpy(i32 %72, i32 %77, i32 %79)
  %81 = load i32, i32* %2, align 4
  store i32 %81, i32* %1, align 4
  br label %22

82:                                               ; preds = %22
  %83 = call %struct.cword* @write_alloc(i32 4)
  store %struct.cword* %83, %struct.cword** %4, align 8
  %84 = load %struct.cword*, %struct.cword** %4, align 8
  %85 = getelementptr inbounds %struct.cword, %struct.cword* %84, i32 0, i32 0
  store i32 -1, i32* %85, align 4
  store i32 0, i32* @Tc, align 4
  %86 = load i64, i64* @TS, align 8
  store i64 %86, i64* @Tw, align 8
  br label %87

87:                                               ; preds = %82, %7
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i64) #1

declare dso_local i32 @asort(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local %struct.cword* @write_alloc(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
