; ModuleID = '/home/carl/AnghaBench/linux/block/extr_badblocks.c_badblocks_check.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_badblocks.c_badblocks_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.badblocks = type { i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @badblocks_check(%struct.badblocks* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.badblocks*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.badblocks* %0, %struct.badblocks** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %20 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %13, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %15, align 4
  %25 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %26 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %5
  %30 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %31 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = ashr i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %36 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 1, %37
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %15, align 4
  %42 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %43 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = ashr i32 %45, %44
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %29, %5
  br label %51

51:                                               ; preds = %155, %50
  %52 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %53 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %52, i32 0, i32 2
  %54 = call i32 @read_seqbegin(i32* %53)
  store i32 %54, i32* %16, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %55 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %56 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %81, %51
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 %59, %60
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %82

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %64, %65
  %67 = sdiv i32 %66, 2
  store i32 %67, i32* %17, align 4
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @BB_OFFSET(i32 %72)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %63
  %78 = load i32, i32* %17, align 4
  store i32 %78, i32* %12, align 4
  br label %81

79:                                               ; preds = %63
  %80 = load i32, i32* %17, align 4
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %79, %77
  br label %58

82:                                               ; preds = %58
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %149

86:                                               ; preds = %82
  br label %87

87:                                               ; preds = %145, %86
  %88 = load i32, i32* %12, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %87
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @BB_OFFSET(i32 %95)
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @BB_LEN(i32 %101)
  %103 = add nsw i32 %96, %102
  %104 = load i32, i32* %7, align 4
  %105 = icmp sgt i32 %103, %104
  br label %106

106:                                              ; preds = %90, %87
  %107 = phi i1 [ false, %87 ], [ %105, %90 ]
  br i1 %107, label %108, label %148

108:                                              ; preds = %106
  %109 = load i32*, i32** %13, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @BB_OFFSET(i32 %113)
  %115 = load i32, i32* %15, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %145

117:                                              ; preds = %108
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, -1
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load i32*, i32** %13, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @BB_ACK(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i32 1, i32* %14, align 4
  br label %130

129:                                              ; preds = %120, %117
  store i32 -1, i32* %14, align 4
  br label %130

130:                                              ; preds = %129, %128
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @BB_OFFSET(i32 %135)
  %137 = load i32*, i32** %9, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32*, i32** %13, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @BB_LEN(i32 %142)
  %144 = load i32*, i32** %10, align 8
  store i32 %143, i32* %144, align 4
  br label %145

145:                                              ; preds = %130, %108
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %12, align 4
  br label %87

148:                                              ; preds = %106
  br label %149

149:                                              ; preds = %148, %82
  %150 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %151 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %150, i32 0, i32 2
  %152 = load i32, i32* %16, align 4
  %153 = call i64 @read_seqretry(i32* %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  br label %51

156:                                              ; preds = %149
  %157 = load i32, i32* %14, align 4
  ret i32 %157
}

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local i32 @BB_OFFSET(i32) #1

declare dso_local i32 @BB_LEN(i32) #1

declare dso_local i64 @BB_ACK(i32) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
