; ModuleID = '/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_run-dumper.c_copy_document.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_run-dumper.c_copy_document.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_30__, i32, i32, %struct.TYPE_23__, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_31__*, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_29__, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.TYPE_26__, %struct.TYPE_24__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i32*, i32* }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_document(%struct.TYPE_22__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @yaml_document_initialize(%struct.TYPE_22__* %9, i32 %12, i32 %16, i32 %20, i32 %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %211

30:                                               ; preds = %2
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %33, align 8
  store %struct.TYPE_31__* %34, %struct.TYPE_31__** %6, align 8
  br label %35

35:                                               ; preds = %101, %30
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_31__*, %struct.TYPE_31__** %39, align 8
  %41 = icmp ult %struct.TYPE_31__* %36, %40
  br i1 %41, label %42, label %104

42:                                               ; preds = %35
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %98 [
    i32 129, label %46
    i32 128, label %70
    i32 130, label %84
  ]

46:                                               ; preds = %42
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @yaml_document_add_scalar(%struct.TYPE_22__* %47, i32 %50, i32 %55, i32 %60, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %46
  br label %208

69:                                               ; preds = %46
  br label %100

70:                                               ; preds = %42
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @yaml_document_add_sequence(%struct.TYPE_22__* %71, i32 %74, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %70
  br label %208

83:                                               ; preds = %70
  br label %100

84:                                               ; preds = %42
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %86 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @yaml_document_add_mapping(%struct.TYPE_22__* %85, i32 %88, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %84
  br label %208

97:                                               ; preds = %84
  br label %100

98:                                               ; preds = %42
  %99 = call i32 @assert(i32 0)
  br label %100

100:                                              ; preds = %98, %97, %83, %69
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %102, i32 1
  store %struct.TYPE_31__* %103, %struct.TYPE_31__** %6, align 8
  br label %35

104:                                              ; preds = %35
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %107, align 8
  store %struct.TYPE_31__* %108, %struct.TYPE_31__** %6, align 8
  br label %109

109:                                              ; preds = %204, %104
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %113, align 8
  %115 = icmp ult %struct.TYPE_31__* %110, %114
  br i1 %115, label %116, label %207

116:                                              ; preds = %109
  %117 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  switch i32 %119, label %202 [
    i32 128, label %120
    i32 130, label %159
  ]

120:                                              ; preds = %116
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  store i32* %126, i32** %7, align 8
  br label %127

127:                                              ; preds = %155, %120
  %128 = load i32*, i32** %7, align 8
  %129 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ult i32* %128, %134
  br i1 %135, label %136, label %158

136:                                              ; preds = %127
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %141, align 8
  %143 = ptrtoint %struct.TYPE_31__* %138 to i64
  %144 = ptrtoint %struct.TYPE_31__* %142 to i64
  %145 = sub i64 %143, %144
  %146 = sdiv exact i64 %145, 80
  %147 = add nsw i64 %146, 1
  %148 = trunc i64 %147 to i32
  %149 = load i32*, i32** %7, align 8
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @yaml_document_append_sequence_item(%struct.TYPE_22__* %137, i32 %148, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %136
  br label %208

154:                                              ; preds = %136
  br label %155

155:                                              ; preds = %154
  %156 = load i32*, i32** %7, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %7, align 8
  br label %127

158:                                              ; preds = %127
  br label %203

159:                                              ; preds = %116
  %160 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %164, align 8
  store %struct.TYPE_21__* %165, %struct.TYPE_21__** %8, align 8
  br label %166

166:                                              ; preds = %198, %159
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %168 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %172, align 8
  %174 = icmp ult %struct.TYPE_21__* %167, %173
  br i1 %174, label %175, label %201

175:                                              ; preds = %166
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %177 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_31__*, %struct.TYPE_31__** %180, align 8
  %182 = ptrtoint %struct.TYPE_31__* %177 to i64
  %183 = ptrtoint %struct.TYPE_31__* %181 to i64
  %184 = sub i64 %182, %183
  %185 = sdiv exact i64 %184, 80
  %186 = add nsw i64 %185, 1
  %187 = trunc i64 %186 to i32
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @yaml_document_append_mapping_pair(%struct.TYPE_22__* %176, i32 %187, i32 %190, i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %175
  br label %208

197:                                              ; preds = %175
  br label %198

198:                                              ; preds = %197
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 1
  store %struct.TYPE_21__* %200, %struct.TYPE_21__** %8, align 8
  br label %166

201:                                              ; preds = %166
  br label %203

202:                                              ; preds = %116
  br label %203

203:                                              ; preds = %202, %201, %158
  br label %204

204:                                              ; preds = %203
  %205 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %205, i32 1
  store %struct.TYPE_31__* %206, %struct.TYPE_31__** %6, align 8
  br label %109

207:                                              ; preds = %109
  store i32 1, i32* %3, align 4
  br label %211

208:                                              ; preds = %196, %153, %96, %82, %68
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %210 = call i32 @yaml_document_delete(%struct.TYPE_22__* %209)
  store i32 0, i32* %3, align 4
  br label %211

211:                                              ; preds = %208, %207, %29
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i32 @yaml_document_initialize(%struct.TYPE_22__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @yaml_document_add_scalar(%struct.TYPE_22__*, i32, i32, i32, i32) #1

declare dso_local i32 @yaml_document_add_sequence(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @yaml_document_add_mapping(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @yaml_document_append_sequence_item(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @yaml_document_append_mapping_pair(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @yaml_document_delete(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
