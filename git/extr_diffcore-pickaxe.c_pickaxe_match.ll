; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-pickaxe.c_pickaxe_match.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-pickaxe.c_pickaxe_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filepair = type { %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.diff_options = type { i32, i32, %struct.TYPE_12__, i32*, i64 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, i8* }
%struct.userdiff_driver = type { i32 }

@DIFF_PICKAXE_KIND_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diff_filepair*, %struct.diff_options*, i32*, i32, i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.diff_options*, i32*, i32)*)* @pickaxe_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pickaxe_match(%struct.diff_filepair* %0, %struct.diff_options* %1, i32* %2, i32 %3, i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.diff_options*, i32*, i32)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.diff_filepair*, align 8
  %8 = alloca %struct.diff_options*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.diff_options*, i32*, i32)*, align 8
  %12 = alloca %struct.userdiff_driver*, align 8
  %13 = alloca %struct.userdiff_driver*, align 8
  %14 = alloca %struct.TYPE_13__, align 8
  %15 = alloca %struct.TYPE_13__, align 8
  %16 = alloca i32, align 4
  store %struct.diff_filepair* %0, %struct.diff_filepair** %7, align 8
  store %struct.diff_options* %1, %struct.diff_options** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.diff_options*, i32*, i32)* %4, i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.diff_options*, i32*, i32)** %11, align 8
  store %struct.userdiff_driver* null, %struct.userdiff_driver** %12, align 8
  store %struct.userdiff_driver* null, %struct.userdiff_driver** %13, align 8
  %17 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %18 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %17, i32 0, i32 1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = call i64 @DIFF_FILE_VALID(%struct.TYPE_14__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %5
  %23 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %24 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = call i64 @DIFF_FILE_VALID(%struct.TYPE_14__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %214

29:                                               ; preds = %22, %5
  %30 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %31 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %29
  %35 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %36 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %35, i32 0, i32 1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = call i64 @DIFF_FILE_VALID(%struct.TYPE_14__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %42 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %45 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %44, i32 0, i32 1
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = call i64 @oidset_contains(i64 %43, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %40, %34
  %51 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %52 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %51, i32 0, i32 0
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = call i64 @DIFF_FILE_VALID(%struct.TYPE_14__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %58 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %61 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %60, i32 0, i32 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = call i64 @oidset_contains(i64 %59, i32* %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %56, %50
  %67 = phi i1 [ false, %50 ], [ %65, %56 ]
  br label %68

68:                                               ; preds = %66, %40
  %69 = phi i1 [ true, %40 ], [ %67, %66 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %6, align 4
  br label %214

71:                                               ; preds = %29
  %72 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %73 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  store i32 0, i32* %6, align 4
  br label %214

79:                                               ; preds = %71
  %80 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %81 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %79
  %86 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %87 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %90 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %89, i32 0, i32 1
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = call %struct.userdiff_driver* @get_textconv(i32 %88, %struct.TYPE_14__* %91)
  store %struct.userdiff_driver* %92, %struct.userdiff_driver** %12, align 8
  %93 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %94 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %97 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %96, i32 0, i32 0
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = call %struct.userdiff_driver* @get_textconv(i32 %95, %struct.TYPE_14__* %98)
  store %struct.userdiff_driver* %99, %struct.userdiff_driver** %13, align 8
  br label %100

100:                                              ; preds = %85, %79
  %101 = load %struct.userdiff_driver*, %struct.userdiff_driver** %12, align 8
  %102 = load %struct.userdiff_driver*, %struct.userdiff_driver** %13, align 8
  %103 = icmp eq %struct.userdiff_driver* %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %106 = call i64 @diff_unmodified_pair(%struct.diff_filepair* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 0, i32* %6, align 4
  br label %214

109:                                              ; preds = %104, %100
  %110 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %111 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @DIFF_PICKAXE_KIND_G, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %147

116:                                              ; preds = %109
  %117 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %118 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %147, label %122

122:                                              ; preds = %116
  %123 = load %struct.userdiff_driver*, %struct.userdiff_driver** %12, align 8
  %124 = icmp ne %struct.userdiff_driver* %123, null
  br i1 %124, label %134, label %125

125:                                              ; preds = %122
  %126 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %127 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %130 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %129, i32 0, i32 1
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = call i64 @diff_filespec_is_binary(i32 %128, %struct.TYPE_14__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %125, %122
  %135 = load %struct.userdiff_driver*, %struct.userdiff_driver** %13, align 8
  %136 = icmp ne %struct.userdiff_driver* %135, null
  br i1 %136, label %147, label %137

137:                                              ; preds = %134
  %138 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %139 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %142 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %141, i32 0, i32 0
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = call i64 @diff_filespec_is_binary(i32 %140, %struct.TYPE_14__* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %137, %125
  store i32 0, i32* %6, align 4
  br label %214

147:                                              ; preds = %137, %134, %116, %109
  %148 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %149 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.userdiff_driver*, %struct.userdiff_driver** %12, align 8
  %152 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %153 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %152, i32 0, i32 1
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %156 = call i8* @fill_textconv(i32 %150, %struct.userdiff_driver* %151, %struct.TYPE_14__* %154, i32* %155)
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  store i8* %156, i8** %157, align 8
  %158 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %159 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.userdiff_driver*, %struct.userdiff_driver** %13, align 8
  %162 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %163 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %162, i32 0, i32 0
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %166 = call i8* @fill_textconv(i32 %160, %struct.userdiff_driver* %161, %struct.TYPE_14__* %164, i32* %165)
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  store i8* %166, i8** %167, align 8
  %168 = load i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.diff_options*, i32*, i32)*, i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.diff_options*, i32*, i32)** %11, align 8
  %169 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %170 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %169, i32 0, i32 1
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %170, align 8
  %172 = call i64 @DIFF_FILE_VALID(%struct.TYPE_14__* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %147
  br label %176

175:                                              ; preds = %147
  br label %176

176:                                              ; preds = %175, %174
  %177 = phi %struct.TYPE_13__* [ %14, %174 ], [ null, %175 ]
  %178 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %179 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %178, i32 0, i32 0
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = call i64 @DIFF_FILE_VALID(%struct.TYPE_14__* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  br label %185

184:                                              ; preds = %176
  br label %185

185:                                              ; preds = %184, %183
  %186 = phi %struct.TYPE_13__* [ %15, %183 ], [ null, %184 ]
  %187 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %188 = load i32*, i32** %9, align 8
  %189 = load i32, i32* %10, align 4
  %190 = call i32 %168(%struct.TYPE_13__* %177, %struct.TYPE_13__* %186, %struct.diff_options* %187, i32* %188, i32 %189)
  store i32 %190, i32* %16, align 4
  %191 = load %struct.userdiff_driver*, %struct.userdiff_driver** %12, align 8
  %192 = icmp ne %struct.userdiff_driver* %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %185
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @free(i32 %195)
  br label %197

197:                                              ; preds = %193, %185
  %198 = load %struct.userdiff_driver*, %struct.userdiff_driver** %13, align 8
  %199 = icmp ne %struct.userdiff_driver* %198, null
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @free(i32 %202)
  br label %204

204:                                              ; preds = %200, %197
  %205 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %206 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %205, i32 0, i32 1
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %206, align 8
  %208 = call i32 @diff_free_filespec_data(%struct.TYPE_14__* %207)
  %209 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %210 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %209, i32 0, i32 0
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %210, align 8
  %212 = call i32 @diff_free_filespec_data(%struct.TYPE_14__* %211)
  %213 = load i32, i32* %16, align 4
  store i32 %213, i32* %6, align 4
  br label %214

214:                                              ; preds = %204, %146, %108, %78, %68, %28
  %215 = load i32, i32* %6, align 4
  ret i32 %215
}

declare dso_local i64 @DIFF_FILE_VALID(%struct.TYPE_14__*) #1

declare dso_local i64 @oidset_contains(i64, i32*) #1

declare dso_local %struct.userdiff_driver* @get_textconv(i32, %struct.TYPE_14__*) #1

declare dso_local i64 @diff_unmodified_pair(%struct.diff_filepair*) #1

declare dso_local i64 @diff_filespec_is_binary(i32, %struct.TYPE_14__*) #1

declare dso_local i8* @fill_textconv(i32, %struct.userdiff_driver*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @diff_free_filespec_data(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
