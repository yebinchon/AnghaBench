; ModuleID = '/home/carl/AnghaBench/kphp-kdb/trees/rb/extr_rb_nd.c_rbtree_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/trees/rb/extr_rb_nd.c_rbtree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_7__*, i32, i32, i32*)* @rbtree_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @rbtree_insert(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [70 x %struct.TYPE_7__*], align 16
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = shl i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call %struct.TYPE_7__* @new_node(i32 %20, i32 %21, i32* %22)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %5, align 8
  br label %206

24:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %11, align 8
  br label %26

26:                                               ; preds = %58, %24
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %31 = load i32, i32* %14, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %14, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds [70 x %struct.TYPE_7__*], [70 x %struct.TYPE_7__*]* %10, i64 0, i64 %33
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %11, align 8
  br label %58

44:                                               ; preds = %29
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %11, align 8
  br label %57

55:                                               ; preds = %44
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %5, align 8
  br label %206

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %40
  br label %26

59:                                               ; preds = %26
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* %8, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = call %struct.TYPE_7__* @new_node(i32 %61, i32 %62, i32* %63)
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %12, align 8
  br label %65

65:                                               ; preds = %203, %59
  %66 = load i32, i32* %14, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %204

68:                                               ; preds = %65
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [70 x %struct.TYPE_7__*], [70 x %struct.TYPE_7__*]* %10, i64 0, i64 %71
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %11, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %141

79:                                               ; preds = %68
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %81 = call i64 @IS_BLACK(%struct.TYPE_7__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %86, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %87, %struct.TYPE_7__** %5, align 8
  br label %206

88:                                               ; preds = %79
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %88
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %93 = call i32 @BLACKEN(%struct.TYPE_7__* %92)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %5, align 8
  br label %206

98:                                               ; preds = %88
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [70 x %struct.TYPE_7__*], [70 x %struct.TYPE_7__*]* %10, i64 0, i64 %101
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** %13, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %98
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store %struct.TYPE_7__* %112, %struct.TYPE_7__** %114, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  store %struct.TYPE_7__* %115, %struct.TYPE_7__** %117, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %119 = call i32 @BLACKEN(%struct.TYPE_7__* %118)
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %120, %struct.TYPE_7__** %12, align 8
  br label %140

121:                                              ; preds = %98
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  store %struct.TYPE_7__* %124, %struct.TYPE_7__** %126, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %128 = call i32 @BLACKEN(%struct.TYPE_7__* %127)
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  store %struct.TYPE_7__* %129, %struct.TYPE_7__** %131, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  store %struct.TYPE_7__* %134, %struct.TYPE_7__** %136, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  store %struct.TYPE_7__* %137, %struct.TYPE_7__** %139, align 8
  br label %140

140:                                              ; preds = %121, %109
  br label %203

141:                                              ; preds = %68
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %143 = call i64 @IS_BLACK(%struct.TYPE_7__* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  store %struct.TYPE_7__* %146, %struct.TYPE_7__** %148, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %149, %struct.TYPE_7__** %5, align 8
  br label %206

150:                                              ; preds = %141
  %151 = load i32, i32* %14, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %150
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %155 = call i32 @BLACKEN(%struct.TYPE_7__* %154)
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  store %struct.TYPE_7__* %156, %struct.TYPE_7__** %158, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %159, %struct.TYPE_7__** %5, align 8
  br label %206

160:                                              ; preds = %150
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [70 x %struct.TYPE_7__*], [70 x %struct.TYPE_7__*]* %10, i64 0, i64 %163
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  store %struct.TYPE_7__* %165, %struct.TYPE_7__** %13, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %190

171:                                              ; preds = %160
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  store %struct.TYPE_7__* %174, %struct.TYPE_7__** %176, align 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %178 = call i32 @BLACKEN(%struct.TYPE_7__* %177)
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  store %struct.TYPE_7__* %179, %struct.TYPE_7__** %181, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 2
  store %struct.TYPE_7__* %184, %struct.TYPE_7__** %186, align 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  store %struct.TYPE_7__* %187, %struct.TYPE_7__** %189, align 8
  br label %202

190:                                              ; preds = %160
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 2
  store %struct.TYPE_7__* %193, %struct.TYPE_7__** %195, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  store %struct.TYPE_7__* %196, %struct.TYPE_7__** %198, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %200 = call i32 @BLACKEN(%struct.TYPE_7__* %199)
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %201, %struct.TYPE_7__** %12, align 8
  br label %202

202:                                              ; preds = %190, %171
  br label %203

203:                                              ; preds = %202, %140
  br label %65

204:                                              ; preds = %65
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %205, %struct.TYPE_7__** %5, align 8
  br label %206

206:                                              ; preds = %204, %153, %145, %91, %83, %55, %19
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %207
}

declare dso_local %struct.TYPE_7__* @new_node(i32, i32, i32*) #1

declare dso_local i64 @IS_BLACK(%struct.TYPE_7__*) #1

declare dso_local i32 @BLACKEN(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
