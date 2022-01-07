; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-index-part.c_process_text.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-index-part.c_process_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%union.anon = type { i32, [12 x i8] }

@is_letter = common dso_local global i32* null, align 8
@P = common dso_local global %struct.TYPE_2__* null, align 8
@Pc = common dso_local global i64 0, align 8
@MAX_PAIRS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_text(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %union.anon, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 82
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 101
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp slt i32 %24, 65
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  store i8* %28, i8** %4, align 8
  br label %29

29:                                               ; preds = %26, %20, %14, %3
  br label %30

30:                                               ; preds = %38, %29
  %31 = load i32*, i32** @is_letter, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %4, align 8
  br label %30

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %114, %41
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %115

46:                                               ; preds = %42
  %47 = load i8*, i8** %4, align 8
  store i8* %47, i8** %7, align 8
  br label %48

48:                                               ; preds = %65, %46
  %49 = load i32*, i32** @is_letter, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 32
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load i32*, i32** @is_letter, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %4, align 8
  store i8 %63, i8* %64, align 1
  br label %65

65:                                               ; preds = %56
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %4, align 8
  br label %48

68:                                               ; preds = %48
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = bitcast %union.anon* %8 to [16 x i8]*
  %77 = getelementptr inbounds [16 x i8], [16 x i8]* %76, i64 0, i64 0
  %78 = call i32 @md5(i8* %69, i32 %75, i8* %77)
  %79 = bitcast %union.anon* %8 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @P, align 8
  %82 = load i64, i64* @Pc, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  store i32 %80, i32* %84, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @P, align 8
  %87 = load i64, i64* @Pc, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @P, align 8
  %92 = load i64, i64* @Pc, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 %90, i32* %94, align 4
  %95 = load i64, i64* @Pc, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* @Pc, align 8
  %97 = load i64, i64* @Pc, align 8
  %98 = load i64, i64* @MAX_PAIRS, align 8
  %99 = icmp ule i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  br label %102

102:                                              ; preds = %111, %68
  %103 = load i32*, i32** @is_letter, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 32
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %4, align 8
  br label %102

114:                                              ; preds = %102
  br label %42

115:                                              ; preds = %42
  ret void
}

declare dso_local i32 @md5(i8*, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
