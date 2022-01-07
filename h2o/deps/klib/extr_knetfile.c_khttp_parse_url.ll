; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_knetfile.c_khttp_parse_url.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_knetfile.c_khttp_parse_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i32, i64, i32, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"http_proxy\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@KNF_TYPE_HTTP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @khttp_parse_url(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strstr(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  br label %197

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 7
  store i8* %18, i8** %7, align 8
  br label %19

19:                                               ; preds = %32, %16
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 47
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ false, %19 ], [ %28, %24 ]
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %7, align 8
  br label %19

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sub nsw i64 %40, 7
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = call i64 @calloc(i32 1, i32 56)
  %44 = inttoptr i64 %43 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i64 @calloc(i32 %46, i32 1)
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 7
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @strncpy(i8* %53, i8* %55, i32 %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %9, align 8
  br label %67

67:                                               ; preds = %80, %35
  %68 = load i8*, i8** %9, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8*, i8** %9, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 58
  br label %77

77:                                               ; preds = %72, %67
  %78 = phi i1 [ false, %67 ], [ %76, %72 ]
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %79
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %9, align 8
  br label %67

83:                                               ; preds = %77
  %84 = load i8*, i8** %9, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 58
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %9, align 8
  store i8 0, i8* %89, align 1
  br label %91

91:                                               ; preds = %88, %83
  %92 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %92, i8** %8, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %126

95:                                               ; preds = %91
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @strdup(i8* %98)
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %95
  %107 = load i8*, i8** %9, align 8
  br label %109

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %106
  %110 = phi i8* [ %107, %106 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %108 ]
  %111 = call i8* @strdup(i8* %110)
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 7
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i8*, i8** %7, align 8
  br label %121

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %118
  %122 = phi i8* [ %119, %118 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %120 ]
  %123 = call i8* @strdup(i8* %122)
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 6
  store i8* %123, i8** %125, align 8
  br label %186

126:                                              ; preds = %91
  %127 = load i8*, i8** %8, align 8
  %128 = call i8* @strstr(i8* %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %129 = load i8*, i8** %8, align 8
  %130 = icmp eq i8* %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 7
  %134 = call i8* @strdup(i8* %133)
  br label %138

135:                                              ; preds = %126
  %136 = load i8*, i8** %8, align 8
  %137 = call i8* @strdup(i8* %136)
  br label %138

138:                                              ; preds = %135, %131
  %139 = phi i8* [ %134, %131 ], [ %137, %135 ]
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  store i8* %144, i8** %9, align 8
  br label %145

145:                                              ; preds = %158, %138
  %146 = load i8*, i8** %9, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i8*, i8** %9, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 58
  br label %155

155:                                              ; preds = %150, %145
  %156 = phi i1 [ false, %145 ], [ %154, %150 ]
  br i1 %156, label %157, label %161

157:                                              ; preds = %155
  br label %158

158:                                              ; preds = %157
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %9, align 8
  br label %145

161:                                              ; preds = %155
  %162 = load i8*, i8** %9, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 58
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i8*, i8** %9, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %9, align 8
  store i8 0, i8* %167, align 1
  br label %169

169:                                              ; preds = %166, %161
  %170 = load i8*, i8** %9, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = load i8*, i8** %9, align 8
  br label %177

176:                                              ; preds = %169
  br label %177

177:                                              ; preds = %176, %174
  %178 = phi i8* [ %175, %174 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %176 ]
  %179 = call i8* @strdup(i8* %178)
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 7
  store i8* %179, i8** %181, align 8
  %182 = load i8*, i8** %4, align 8
  %183 = call i8* @strdup(i8* %182)
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 6
  store i8* %183, i8** %185, align 8
  br label %186

186:                                              ; preds = %177, %121
  %187 = load i32, i32* @KNF_TYPE_HTTP, align 4
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 5
  store i32 %187, i32* %189, align 8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 3
  store i32 -1, i32* %191, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 2
  store i32 -1, i32* %193, align 8
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 4
  store i64 0, i64* %195, align 8
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  store %struct.TYPE_3__* %196, %struct.TYPE_3__** %3, align 8
  br label %197

197:                                              ; preds = %186, %15
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  ret %struct.TYPE_3__* %198
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
