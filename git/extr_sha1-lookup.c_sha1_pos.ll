; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-lookup.c_sha1_pos.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-lookup.c_sha1_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"assertion failed in binary search\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sha1_pos(i8* %0, i8* %1, i64 %2, i32 (i64, i8*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32 (i64, i8*)*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 (i64, i8*)* %3, i32 (i64, i8*)** %9, align 8
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %133

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 1
  br i1 %24, label %25, label %98

25:                                               ; preds = %22
  store i64 0, i64* %16, align 8
  br label %26

26:                                               ; preds = %94, %25
  %27 = load i64, i64* %16, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %27, %32
  br i1 %33, label %34, label %97

34:                                               ; preds = %26
  %35 = load i32 (i64, i8*)*, i32 (i64, i8*)** %9, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 %35(i64 0, i8* %36)
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %16, align 8
  %40 = add i64 %38, %39
  %41 = inttoptr i64 %40 to i8*
  %42 = call i64 @take2(i8* %41)
  store i64 %42, i64* %13, align 8
  %43 = load i32 (i64, i8*)*, i32 (i64, i8*)** %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = sub i64 %44, 1
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 %43(i64 %45, i8* %46)
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %16, align 8
  %50 = add i64 %48, %49
  %51 = inttoptr i64 %50 to i8*
  %52 = call i64 @take2(i8* %51)
  store i64 %52, i64* %14, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %16, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = call i64 @take2(i8* %55)
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %133

61:                                               ; preds = %34
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %15, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @index_pos_to_insert_pos(i64 %66)
  store i32 %67, i32* %5, align 4
  br label %133

68:                                               ; preds = %61
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %14, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %68
  %73 = load i64, i64* %8, align 8
  %74 = sub i64 %73, 1
  %75 = load i64, i64* %15, align 8
  %76 = load i64, i64* %13, align 8
  %77 = sub i64 %75, %76
  %78 = mul i64 %74, %77
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %13, align 8
  %81 = sub i64 %79, %80
  %82 = udiv i64 %78, %81
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp ule i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %72
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* %10, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %97

91:                                               ; preds = %86, %72
  %92 = call i32 @BUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %68
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %16, align 8
  %96 = add i64 %95, 2
  store i64 %96, i64* %16, align 8
  br label %26

97:                                               ; preds = %90, %26
  br label %98

98:                                               ; preds = %97, %22
  br label %99

99:                                               ; preds = %126, %98
  %100 = load i32 (i64, i8*)*, i32 (i64, i8*)** %9, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 %100(i64 %101, i8* %102)
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @hashcmp(i32 %103, i8* %104)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %99
  %109 = load i64, i64* %12, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %5, align 4
  br label %133

111:                                              ; preds = %99
  %112 = load i32, i32* %17, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i64, i64* %12, align 8
  store i64 %115, i64* %10, align 8
  br label %119

116:                                              ; preds = %111
  %117 = load i64, i64* %12, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %11, align 8
  br label %119

119:                                              ; preds = %116, %114
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* %11, align 8
  %123 = sub i64 %121, %122
  %124 = udiv i64 %123, 2
  %125 = add i64 %120, %124
  store i64 %125, i64* %12, align 8
  br label %126

126:                                              ; preds = %119
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %10, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %99, label %130

130:                                              ; preds = %126
  %131 = load i64, i64* %11, align 8
  %132 = call i32 @index_pos_to_insert_pos(i64 %131)
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %130, %108, %65, %60, %21
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i64 @take2(i8*) #1

declare dso_local i32 @index_pos_to_insert_pos(i64) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @hashcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
