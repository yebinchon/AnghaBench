; ModuleID = '/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_clear_mailinfo.c'
source_filename = "/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_clear_mailinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailinfo = type { i32, i32***, i32***, i32**, i32**, i32**, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_mailinfo(%struct.mailinfo* %0) #0 {
  %2 = alloca %struct.mailinfo*, align 8
  %3 = alloca i32, align 4
  store %struct.mailinfo* %0, %struct.mailinfo** %2, align 8
  %4 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %5 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %4, i32 0, i32 9
  %6 = call i32 @strbuf_release(i32* %5)
  %7 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %8 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %7, i32 0, i32 8
  %9 = call i32 @strbuf_release(i32* %8)
  %10 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %11 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %10, i32 0, i32 7
  %12 = call i32 @strbuf_release(i32* %11)
  %13 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %14 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %13, i32 0, i32 6
  %15 = call i32 @strbuf_release(i32* %14)
  %16 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %17 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %16, i32 0, i32 5
  %18 = load i32**, i32*** %17, align 8
  %19 = call i32 @free(i32** %18)
  %20 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %21 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %20, i32 0, i32 4
  %22 = load i32**, i32*** %21, align 8
  %23 = icmp ne i32** %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %43, %24
  %26 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %27 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %26, i32 0, i32 4
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %25
  %35 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %36 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %35, i32 0, i32 4
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @strbuf_release(i32* %41)
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %25

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %49 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %48, i32 0, i32 4
  %50 = load i32**, i32*** %49, align 8
  %51 = call i32 @free(i32** %50)
  %52 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %53 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %52, i32 0, i32 3
  %54 = load i32**, i32*** %53, align 8
  %55 = icmp ne i32** %54, null
  br i1 %55, label %56, label %79

56:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %75, %56
  %58 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %59 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %58, i32 0, i32 3
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %57
  %67 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %68 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %67, i32 0, i32 3
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @strbuf_release(i32* %73)
  br label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %57

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %78, %47
  %80 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %81 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %80, i32 0, i32 3
  %82 = load i32**, i32*** %81, align 8
  %83 = call i32 @free(i32** %82)
  br label %84

84:                                               ; preds = %92, %79
  %85 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %86 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %85, i32 0, i32 2
  %87 = load i32***, i32**** %86, align 8
  %88 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %89 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %88, i32 0, i32 1
  %90 = load i32***, i32**** %89, align 8
  %91 = icmp ult i32*** %87, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %84
  %93 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %94 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %93, i32 0, i32 1
  %95 = load i32***, i32**** %94, align 8
  %96 = load i32**, i32*** %95, align 8
  %97 = call i32 @free(i32** %96)
  %98 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %99 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %98, i32 0, i32 1
  %100 = load i32***, i32**** %99, align 8
  %101 = getelementptr inbounds i32**, i32*** %100, i32 -1
  store i32*** %101, i32**** %99, align 8
  br label %84

102:                                              ; preds = %84
  %103 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %104 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %103, i32 0, i32 0
  %105 = call i32 @strbuf_release(i32* %104)
  ret void
}

declare dso_local i32 @strbuf_release(i32*) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
