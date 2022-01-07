; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_read_back.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_read_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, i64, i64, %struct.TYPE_4__*, %struct.TYPE_4__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_back(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 7
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i8* [ %21, %17 ], [ null, %22 ]
  store i8* %24, i8** %11, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %29
  br label %51

40:                                               ; preds = %23
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %46, %40
  br label %51

51:                                               ; preds = %50, %39
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = icmp ne %struct.TYPE_4__* %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 7
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %7, align 8
  br label %67

67:                                               ; preds = %63, %59, %51
  br label %68

68:                                               ; preds = %196, %67
  %69 = load i32, i32* %6, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %197

71:                                               ; preds = %68
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  br label %88

84:                                               ; preds = %71
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  br label %88

88:                                               ; preds = %84, %79
  %89 = phi i64 [ %83, %79 ], [ %87, %84 ]
  %90 = sub nsw i64 %74, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %95, %88
  %98 = load i32, i32* %9, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %97
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %105, %102
  store i64 %106, i64* %104, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %122

109:                                              ; preds = %100
  %110 = load i32, i32* %9, align 4
  %111 = load i8*, i8** %11, align 8
  %112 = sext i32 %110 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  store i8* %114, i8** %11, align 8
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @memcpy(i32 %115, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %109, %100
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %6, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %122, %97
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %132, %135
  br i1 %136, label %137, label %185

137:                                              ; preds = %129
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %140 = icmp eq %struct.TYPE_4__* %138, %139
  br i1 %140, label %141, label %161

141:                                              ; preds = %137
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 3
  store i64 %144, i64* %146, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 4
  store i64 %144, i64* %148, align 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %141
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %153, %141
  br label %197

161:                                              ; preds = %137
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 7
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  store %struct.TYPE_4__* %164, %struct.TYPE_4__** %8, align 8
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = icmp sgt i64 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 8
  store %struct.TYPE_4__* %171, %struct.TYPE_4__** %173, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 7
  store %struct.TYPE_4__* %174, %struct.TYPE_4__** %176, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %178 = call i32 @free_buffer(%struct.TYPE_4__* %177)
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 6
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, -1
  store i64 %182, i64* %180, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %183, %struct.TYPE_4__** %7, align 8
  br label %184

184:                                              ; preds = %161
  br label %196

185:                                              ; preds = %129
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = icmp eq i64 %188, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %185
  br label %197

195:                                              ; preds = %185
  br label %196

196:                                              ; preds = %195, %184
  br label %68

197:                                              ; preds = %194, %160, %68
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %197
  %203 = load i32, i32* %10, align 4
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %206, %203
  store i32 %207, i32* %205, align 4
  br label %214

208:                                              ; preds = %197
  %209 = load i32, i32* %10, align 4
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = sub nsw i32 %212, %209
  store i32 %213, i32* %211, align 8
  br label %214

214:                                              ; preds = %208, %202
  %215 = load i32, i32* %10, align 4
  ret i32 %215
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free_buffer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
