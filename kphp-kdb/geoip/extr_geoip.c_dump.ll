; ModuleID = '/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip.c_dump.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip.c_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, i32, i32, i32, %struct.tree*, %struct.tree* }

@mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%u %d %c%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%u %d %02d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%u %d %c%c/%c%c\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%u %d 00\0A\00", align 1
@total_out = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump(%struct.tree* %0, i32 %1) #0 {
  %3 = alloca %struct.tree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tree*, %struct.tree** %3, align 8
  %7 = icmp ne %struct.tree* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %197

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.tree*, %struct.tree** %3, align 8
  %13 = getelementptr inbounds %struct.tree, %struct.tree* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.tree*, %struct.tree** %3, align 8
  %17 = getelementptr inbounds %struct.tree, %struct.tree* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %9
  %22 = load %struct.tree*, %struct.tree** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @count(%struct.tree* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.tree*, %struct.tree** %3, align 8
  %27 = getelementptr inbounds %struct.tree, %struct.tree* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp uge i32 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.tree*, %struct.tree** %3, align 8
  %33 = getelementptr inbounds %struct.tree, %struct.tree* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.tree*, %struct.tree** %3, align 8
  %36 = getelementptr inbounds %struct.tree, %struct.tree* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %21
  br label %38

38:                                               ; preds = %37, %9
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.tree*, %struct.tree** %3, align 8
  %41 = getelementptr inbounds %struct.tree, %struct.tree* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %184

44:                                               ; preds = %38
  %45 = load %struct.tree*, %struct.tree** %3, align 8
  %46 = getelementptr inbounds %struct.tree, %struct.tree* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %152

49:                                               ; preds = %44
  %50 = load i32, i32* @mode, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %72, label %52

52:                                               ; preds = %49
  %53 = load %struct.tree*, %struct.tree** %3, align 8
  %54 = getelementptr inbounds %struct.tree, %struct.tree* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.tree*, %struct.tree** %3, align 8
  %57 = getelementptr inbounds %struct.tree, %struct.tree* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.tree*, %struct.tree** %3, align 8
  %60 = getelementptr inbounds %struct.tree, %struct.tree* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = ashr i32 %61, 8
  %63 = trunc i32 %62 to i8
  %64 = sext i8 %63 to i32
  %65 = load %struct.tree*, %struct.tree** %3, align 8
  %66 = getelementptr inbounds %struct.tree, %struct.tree* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 255
  %69 = trunc i32 %68 to i8
  %70 = sext i8 %69 to i32
  %71 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58, i32 %64, i32 %70)
  br label %151

72:                                               ; preds = %49
  %73 = load i32, i32* @mode, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load %struct.tree*, %struct.tree** %3, align 8
  %77 = getelementptr inbounds %struct.tree, %struct.tree* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.tree*, %struct.tree** %3, align 8
  %80 = getelementptr inbounds %struct.tree, %struct.tree* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.tree*, %struct.tree** %3, align 8
  %83 = getelementptr inbounds %struct.tree, %struct.tree* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %81, i32 %84)
  br label %150

86:                                               ; preds = %72
  %87 = load i32, i32* @mode, align 4
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %147

89:                                               ; preds = %86
  %90 = load %struct.tree*, %struct.tree** %3, align 8
  %91 = getelementptr inbounds %struct.tree, %struct.tree* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, 255
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %126

95:                                               ; preds = %89
  %96 = load %struct.tree*, %struct.tree** %3, align 8
  %97 = getelementptr inbounds %struct.tree, %struct.tree* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.tree*, %struct.tree** %3, align 8
  %100 = getelementptr inbounds %struct.tree, %struct.tree* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.tree*, %struct.tree** %3, align 8
  %103 = getelementptr inbounds %struct.tree, %struct.tree* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = ashr i32 %104, 24
  %106 = trunc i32 %105 to i8
  %107 = sext i8 %106 to i32
  %108 = load %struct.tree*, %struct.tree** %3, align 8
  %109 = getelementptr inbounds %struct.tree, %struct.tree* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = ashr i32 %110, 16
  %112 = trunc i32 %111 to i8
  %113 = sext i8 %112 to i32
  %114 = load %struct.tree*, %struct.tree** %3, align 8
  %115 = getelementptr inbounds %struct.tree, %struct.tree* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = ashr i32 %116, 8
  %118 = trunc i32 %117 to i8
  %119 = sext i8 %118 to i32
  %120 = load %struct.tree*, %struct.tree** %3, align 8
  %121 = getelementptr inbounds %struct.tree, %struct.tree* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = trunc i32 %122 to i8
  %124 = sext i8 %123 to i32
  %125 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %101, i32 %107, i32 %113, i32 %119, i32 %124)
  br label %146

126:                                              ; preds = %89
  %127 = load %struct.tree*, %struct.tree** %3, align 8
  %128 = getelementptr inbounds %struct.tree, %struct.tree* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.tree*, %struct.tree** %3, align 8
  %131 = getelementptr inbounds %struct.tree, %struct.tree* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.tree*, %struct.tree** %3, align 8
  %134 = getelementptr inbounds %struct.tree, %struct.tree* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = ashr i32 %135, 24
  %137 = trunc i32 %136 to i8
  %138 = sext i8 %137 to i32
  %139 = load %struct.tree*, %struct.tree** %3, align 8
  %140 = getelementptr inbounds %struct.tree, %struct.tree* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = ashr i32 %141, 16
  %143 = trunc i32 %142 to i8
  %144 = sext i8 %143 to i32
  %145 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %132, i32 %138, i32 %144)
  br label %146

146:                                              ; preds = %126, %95
  br label %149

147:                                              ; preds = %86
  %148 = call i32 @assert(i32 0)
  br label %149

149:                                              ; preds = %147, %146
  br label %150

150:                                              ; preds = %149, %75
  br label %151

151:                                              ; preds = %150, %52
  br label %181

152:                                              ; preds = %44
  %153 = load i32, i32* @mode, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32, i32* @mode, align 4
  %157 = icmp eq i32 %156, 2
  br i1 %157, label %158, label %166

158:                                              ; preds = %155, %152
  %159 = load %struct.tree*, %struct.tree** %3, align 8
  %160 = getelementptr inbounds %struct.tree, %struct.tree* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.tree*, %struct.tree** %3, align 8
  %163 = getelementptr inbounds %struct.tree, %struct.tree* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %161, i32 %164, i32 63, i32 63)
  br label %180

166:                                              ; preds = %155
  %167 = load i32, i32* @mode, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load %struct.tree*, %struct.tree** %3, align 8
  %171 = getelementptr inbounds %struct.tree, %struct.tree* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.tree*, %struct.tree** %3, align 8
  %174 = getelementptr inbounds %struct.tree, %struct.tree* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %172, i32 %175)
  br label %179

177:                                              ; preds = %166
  %178 = call i32 @assert(i32 0)
  br label %179

179:                                              ; preds = %177, %169
  br label %180

180:                                              ; preds = %179, %158
  br label %181

181:                                              ; preds = %180, %151
  %182 = load i32, i32* @total_out, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* @total_out, align 4
  br label %184

184:                                              ; preds = %181, %38
  %185 = load %struct.tree*, %struct.tree** %3, align 8
  %186 = getelementptr inbounds %struct.tree, %struct.tree* %185, i32 0, i32 5
  %187 = load %struct.tree*, %struct.tree** %186, align 8
  %188 = load %struct.tree*, %struct.tree** %3, align 8
  %189 = getelementptr inbounds %struct.tree, %struct.tree* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  call void @dump(%struct.tree* %187, i32 %190)
  %191 = load %struct.tree*, %struct.tree** %3, align 8
  %192 = getelementptr inbounds %struct.tree, %struct.tree* %191, i32 0, i32 4
  %193 = load %struct.tree*, %struct.tree** %192, align 8
  %194 = load %struct.tree*, %struct.tree** %3, align 8
  %195 = getelementptr inbounds %struct.tree, %struct.tree* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  call void @dump(%struct.tree* %193, i32 %196)
  br label %197

197:                                              ; preds = %184, %8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @count(%struct.tree*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
