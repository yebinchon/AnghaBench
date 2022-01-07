; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_parse_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_parse_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32)* @parse_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_list(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %158

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %144, %18
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 16
  %22 = load i8*, i8** %11, align 8
  %23 = icmp uge i8* %21, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %19
  %25 = load i8*, i8** %11, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = icmp ult i8* %25, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %24
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @advance_read_ptr(i32* %32, i32 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 16
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  br label %41

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 16, %40 ]
  %43 = call i32 @force_ready_bytes(i32* %35, i32 %42)
  %44 = load i32*, i32** %8, align 8
  %45 = call i8* @get_read_ptr(i32* %44)
  store i8* %45, i8** %10, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @get_ready_bytes(i32* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %51, %41
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8* %57, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %53, %24, %19
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = icmp ult i8* %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %84, %58
  %65 = load i8*, i8** %10, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = icmp ult i8* %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i8*, i8** %10, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sge i32 %71, 48
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i8*, i8** %10, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sle i32 %76, 57
  br label %78

78:                                               ; preds = %73, %68, %64
  %79 = phi i1 [ false, %68 ], [ false, %64 ], [ %77, %73 ]
  br i1 %79, label %80, label %97

80:                                               ; preds = %78
  %81 = load i32, i32* %14, align 4
  %82 = icmp sge i32 %81, 214748364
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 -1, i32* %5, align 4
  br label %158

84:                                               ; preds = %80
  %85 = load i32, i32* %14, align 4
  %86 = mul nsw i32 %85, 10
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %10, align 8
  %89 = load i8, i8* %87, align 1
  %90 = sext i8 %89 to i32
  %91 = sub nsw i32 %90, 48
  %92 = add nsw i32 %86, %91
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %9, align 4
  br label %64

97:                                               ; preds = %78
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %113, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %9, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %101
  %105 = load i8*, i8** %10, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = icmp eq i8* %105, %106
  br i1 %107, label %113, label %108

108:                                              ; preds = %104
  %109 = load i8*, i8** %10, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 44
  br i1 %112, label %113, label %119

113:                                              ; preds = %108, %104, %97
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %115, %116
  %118 = call i32 @advance_skip_read_ptr(i32* %114, i32 %117)
  store i32 -1, i32* %5, align 4
  br label %158

119:                                              ; preds = %108, %101
  %120 = load i32, i32* %14, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %13, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  store i32 %120, i32* %125, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %119
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @advance_read_ptr(i32* %129, i32 %130)
  %132 = load i32, i32* %13, align 4
  store i32 %132, i32* %5, align 4
  br label %158

133:                                              ; preds = %119
  %134 = load i8*, i8** %10, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 44
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load i8*, i8** %10, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %10, align 8
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %144

144:                                              ; preds = %133
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %9, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %19, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @advance_read_ptr(i32* %154, i32 %155)
  %157 = load i32, i32* %13, align 4
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %148, %128, %113, %83, %17
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i32 @advance_read_ptr(i32*, i32) #1

declare dso_local i32 @force_ready_bytes(i32*, i32) #1

declare dso_local i8* @get_read_ptr(i32*) #1

declare dso_local i32 @get_ready_bytes(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @advance_skip_read_ptr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
