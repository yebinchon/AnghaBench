; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_get_dead_hosts_list_full.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_get_dead_hosts_list_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"get_dead_hosts_list_full (volume_id:%llu, delay: %d)\0A\00", align 1
@hosts = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@HOSTS = common dso_local global %struct.TYPE_2__** null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"%llu,%s,0x%llx,%d,%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_dead_hosts_list_full(i64 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i64, i64* %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %14, i32 %15)
  %17 = load i32, i32* @hosts, align 4
  %18 = call i32* @calloc(i32 %17, i32 4)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %209

22:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %23 = load i32, i32* @now, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  store i32 1, i32* %8, align 4
  br label %26

26:                                               ; preds = %108, %22
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @hosts, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %111

30:                                               ; preds = %26
  %31 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @HOSTS, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %31, i64 %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %107

40:                                               ; preds = %30
  %41 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @HOSTS, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %41, i64 %43
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %107, label %49

49:                                               ; preds = %40
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @HOSTS, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %50, i64 %52
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %107

59:                                               ; preds = %49
  %60 = load i32, i32* %8, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32 %60, i32* %65, align 4
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %67 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @HOSTS, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %67, i64 %69
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @HOSTS, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %74, i64 %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @HOSTS, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %81, i64 %83
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @HOSTS, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %88, i64 %90
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @HOSTS, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %95, i64 %97
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @snprintf(i8* %66, i32 1024, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %73, i32 %80, i32 %87, i32 %94, i32 %101)
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %59, %49, %40, %30
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %26

111:                                              ; preds = %26
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i8* %115, i8** %3, align 8
  br label %209

116:                                              ; preds = %111
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i8* @malloc(i32 %119)
  store i8* %120, i8** %12, align 8
  %121 = load i8*, i8** %12, align 8
  store i8* %121, i8** %13, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @free(i32* %125)
  store i8* null, i8** %3, align 8
  br label %209

127:                                              ; preds = %116
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %193, %127
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %196

132:                                              ; preds = %128
  %133 = load i8*, i8** %13, align 8
  %134 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @HOSTS, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %134, i64 %140
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @HOSTS, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %145, i64 %151
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @HOSTS, align 8
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %156, i64 %162
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @HOSTS, align 8
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %167, i64 %173
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @HOSTS, align 8
  %179 = load i32*, i32** %7, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %178, i64 %184
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @sprintf(i8* %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %144, i32 %155, i32 %166, i32 %177, i32 %188)
  %190 = load i8*, i8** %13, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  store i8* %192, i8** %13, align 8
  br label %193

193:                                              ; preds = %132
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %8, align 4
  br label %128

196:                                              ; preds = %128
  %197 = load i8*, i8** %13, align 8
  %198 = load i8*, i8** %12, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  %202 = getelementptr inbounds i8, i8* %201, i64 -1
  %203 = icmp eq i8* %197, %202
  %204 = zext i1 %203 to i32
  %205 = call i32 @assert(i32 %204)
  %206 = load i32*, i32** %7, align 8
  %207 = call i32 @free(i32* %206)
  %208 = load i8*, i8** %12, align 8
  store i8* %208, i8** %3, align 8
  br label %209

209:                                              ; preds = %196, %124, %114, %21
  %210 = load i8*, i8** %3, align 8
  ret i8* %210
}

declare dso_local i32 @vkprintf(i32, i8*, i64, i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i64, i32, i32, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
