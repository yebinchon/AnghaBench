; ModuleID = '/home/carl/AnghaBench/git/extr_url.c_url_decode_internal.c'
source_filename = "/home/carl/AnghaBench/git/extr_url.c_url_decode_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i32, i8*, %struct.strbuf*, i32)* @url_decode_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @url_decode_internal(i8** %0, i32 %1, i8* %2, %struct.strbuf* %3, i32 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.strbuf* %3, %struct.strbuf** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i8**, i8*** %6, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %11, align 8
  br label %16

16:                                               ; preds = %78, %54, %5
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %83

19:                                               ; preds = %16
  %20 = load i8*, i8** %11, align 8
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %12, align 1
  %22 = load i8, i8* %12, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %83

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %12, align 1
  %31 = call i64 @strchr(i8* %29, i8 zeroext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %11, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %7, align 4
  br label %83

38:                                               ; preds = %28, %25
  %39 = load i8, i8* %12, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 37
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp sge i32 %46, 3
  br i1 %47, label %48, label %64

48:                                               ; preds = %45, %42
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = call i32 @hex2chr(i8* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 0, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %56 = load i32, i32* %13, align 4
  %57 = trunc i32 %56 to i8
  %58 = call i32 @strbuf_addch(%struct.strbuf* %55, i8 zeroext %57)
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 3
  store i8* %60, i8** %11, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 3
  store i32 %62, i32* %7, align 4
  br label %16

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63, %45, %38
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i8, i8* %12, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 43
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %73 = call i32 @strbuf_addch(%struct.strbuf* %72, i8 zeroext 32)
  br label %78

74:                                               ; preds = %67, %64
  %75 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %76 = load i8, i8* %12, align 1
  %77 = call i32 @strbuf_addch(%struct.strbuf* %75, i8 zeroext %76)
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %11, align 8
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %7, align 4
  br label %16

83:                                               ; preds = %33, %24, %16
  %84 = load i8*, i8** %11, align 8
  %85 = load i8**, i8*** %6, align 8
  store i8* %84, i8** %85, align 8
  %86 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %87 = call i8* @strbuf_detach(%struct.strbuf* %86, i32* null)
  ret i8* %87
}

declare dso_local i64 @strchr(i8*, i8 zeroext) #1

declare dso_local i32 @hex2chr(i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 zeroext) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
