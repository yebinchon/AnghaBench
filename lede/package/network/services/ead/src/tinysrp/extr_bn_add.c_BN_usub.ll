; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_bn_add.c_BN_usub.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_bn_add.c_BN_usub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }

@BN_MASK2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_usub(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = call i32 @bn_check_top(%struct.TYPE_8__* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = call i32 @bn_check_top(%struct.TYPE_8__* %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %182

29:                                               ; preds = %3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32* @bn_wexpand(%struct.TYPE_8__* %36, i32 %37)
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %182

41:                                               ; preds = %29
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %12, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %13, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %91, %41
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %94

55:                                               ; preds = %51
  %56 = load i32*, i32** %12, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %12, align 8
  %58 = load i32, i32* %56, align 4
  store i32 %58, i32* %10, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %13, align 8
  %61 = load i32, i32* %59, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %55
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp sle i32 %65, %66
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %69, %70
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* @BN_MASK2, align 4
  %74 = and i32 %72, %73
  store i32 %74, i32* %10, align 4
  br label %85

75:                                               ; preds = %55
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %76, %77
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* @BN_MASK2, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %75, %64
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @BN_MASK2, align 4
  %88 = and i32 %86, %87
  %89 = load i32*, i32** %14, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %14, align 8
  store i32 %88, i32* %89, align 4
  br label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %15, align 4
  br label %51

94:                                               ; preds = %51
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %94
  br label %98

98:                                               ; preds = %119, %97
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %98
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  %105 = load i32*, i32** %12, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %12, align 8
  %107 = load i32, i32* %105, align 4
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* @BN_MASK2, align 4
  %111 = and i32 %109, %110
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32*, i32** %14, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %14, align 8
  store i32 %112, i32* %113, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %102
  br label %120

119:                                              ; preds = %102
  br label %98

120:                                              ; preds = %118, %98
  br label %121

121:                                              ; preds = %120, %94
  %122 = load i32*, i32** %14, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = icmp ne i32* %122, %123
  br i1 %124, label %125, label %176

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %165, %125
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp sge i32 %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %175

132:                                              ; preds = %126
  %133 = load i32*, i32** %12, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %14, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp sge i32 %138, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  br label %175

143:                                              ; preds = %132
  %144 = load i32*, i32** %12, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %14, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp sge i32 %149, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  br label %175

154:                                              ; preds = %143
  %155 = load i32*, i32** %12, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %14, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp sge i32 %160, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %154
  br label %175

165:                                              ; preds = %154
  %166 = load i32*, i32** %12, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 3
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %14, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 3
  store i32 %168, i32* %170, align 4
  %171 = load i32*, i32** %14, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 4
  store i32* %172, i32** %14, align 8
  %173 = load i32*, i32** %12, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 4
  store i32* %174, i32** %12, align 8
  br label %126

175:                                              ; preds = %164, %153, %142, %131
  br label %176

176:                                              ; preds = %175, %121
  %177 = load i32, i32* %8, align 4
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %181 = call i32 @bn_fix_top(%struct.TYPE_8__* %180)
  store i32 1, i32* %4, align 4
  br label %182

182:                                              ; preds = %176, %40, %28
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @bn_check_top(%struct.TYPE_8__*) #1

declare dso_local i32* @bn_wexpand(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @bn_fix_top(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
