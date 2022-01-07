; ModuleID = '/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_decode_b_segment.c'
source_filename = "/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_decode_b_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.strbuf* (%struct.strbuf*)* @decode_b_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.strbuf* @decode_b_segment(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %9 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = call %struct.strbuf* @xmalloc(i32 16)
  store %struct.strbuf* %11, %struct.strbuf** %7, align 8
  %12 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %13 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @strbuf_init(%struct.strbuf* %12, i32 %15)
  br label %17

17:                                               ; preds = %95, %58, %1
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %6, align 8
  %20 = load i8, i8* %18, align 1
  %21 = sext i8 %20 to i32
  store i32 %21, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %96

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 43
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 62, i32* %3, align 4
  br label %63

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 47
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 63, i32* %3, align 4
  br label %62

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = icmp sle i32 65, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = icmp sle i32 %35, 90
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = sub nsw i32 %38, 65
  store i32 %39, i32* %3, align 4
  br label %61

40:                                               ; preds = %34, %31
  %41 = load i32, i32* %3, align 4
  %42 = icmp sle i32 97, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = icmp sle i32 %44, 122
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = sub nsw i32 %47, 71
  store i32 %48, i32* %3, align 4
  br label %60

49:                                               ; preds = %43, %40
  %50 = load i32, i32* %3, align 4
  %51 = icmp sle i32 48, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* %3, align 4
  %54 = icmp sle i32 %53, 57
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  %57 = sub nsw i32 %56, -4
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %52, %49
  br label %17

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %46
  br label %61

61:                                               ; preds = %60, %37
  br label %62

62:                                               ; preds = %61, %30
  br label %63

63:                                               ; preds = %62, %26
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  switch i32 %64, label %95 [
    i32 0, label %66
    i32 1, label %69
    i32 2, label %79
    i32 3, label %89
  ]

66:                                               ; preds = %63
  %67 = load i32, i32* %3, align 4
  %68 = shl i32 %67, 2
  store i32 %68, i32* %5, align 4
  br label %95

69:                                               ; preds = %63
  %70 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %3, align 4
  %73 = ashr i32 %72, 4
  %74 = or i32 %71, %73
  %75 = call i32 @strbuf_addch(%struct.strbuf* %70, i32 %74)
  %76 = load i32, i32* %3, align 4
  %77 = and i32 %76, 15
  %78 = shl i32 %77, 4
  store i32 %78, i32* %5, align 4
  br label %95

79:                                               ; preds = %63
  %80 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %3, align 4
  %83 = ashr i32 %82, 2
  %84 = or i32 %81, %83
  %85 = call i32 @strbuf_addch(%struct.strbuf* %80, i32 %84)
  %86 = load i32, i32* %3, align 4
  %87 = and i32 %86, 3
  %88 = shl i32 %87, 6
  store i32 %88, i32* %5, align 4
  br label %95

89:                                               ; preds = %63
  %90 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %3, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @strbuf_addch(%struct.strbuf* %90, i32 %93)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %63, %89, %79, %69, %66
  br label %17

96:                                               ; preds = %17
  %97 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  ret %struct.strbuf* %97
}

declare dso_local %struct.strbuf* @xmalloc(i32) #1

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
