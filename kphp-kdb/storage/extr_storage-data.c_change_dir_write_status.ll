; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_change_dir_write_status.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_change_dir_write_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.stat = type { i64 }

@dirs = common dso_local global i32 0, align 4
@Dirs = common dso_local global %struct.TYPE_7__* null, align 8
@volumes = common dso_local global i32 0, align 4
@Volumes = common dso_local global %struct.TYPE_6__** null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Didn't open %s in write mode.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @change_dir_write_status(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.stat, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 1, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 %19, %20
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @dirs, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %2
  store i32 -1, i32* %3, align 4
  br label %227

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Dirs, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %11, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %227

40:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %209, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @volumes, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %212

45:                                               ; preds = %41
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @Volumes, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %46, i64 %48
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %13, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %208

58:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %86, %58
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %59
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %68, i64 %70
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %65
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %80, i64 %82
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %13, align 8
  br label %89

85:                                               ; preds = %65
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %59

89:                                               ; preds = %77, %59
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %91 = icmp ne %struct.TYPE_8__* %90, null
  br i1 %91, label %92, label %207

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = xor i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %131

100:                                              ; preds = %92
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @close(i32 %108)
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store i32 -1, i32* %111, align 4
  br label %112

112:                                              ; preds = %105, %100
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = call i32 @pthread_mutex_lock(i32* %114)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %112
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @close(i32 %123)
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  store i32 -1, i32* %126, align 4
  br label %127

127:                                              ; preds = %120, %112
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = call i32 @pthread_mutex_unlock(i32* %129)
  br label %204

131:                                              ; preds = %92
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %131
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @O_RDONLY, align 4
  %141 = call i32 @open(i32 %139, i32 %140)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %136
  %145 = load i32, i32* %14, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %144, %136
  br label %149

149:                                              ; preds = %148, %131
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 3
  %152 = call i32 @pthread_mutex_lock(i32* %151)
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %194

157:                                              ; preds = %149
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @O_WRONLY, align 4
  %162 = call i32 @open(i32 %160, i32 %161)
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* %15, align 4
  %164 = icmp sge i32 %163, 0
  br i1 %164, label %165, label %193

165:                                              ; preds = %157
  %166 = load i32, i32* %15, align 4
  %167 = call i32 @fstat(i32 %166, %struct.stat* %16)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %185, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %171, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %169
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* @F_WRLCK, align 4
  %179 = call i64 @lock_whole_file(i32 %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load i32, i32* %15, align 4
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 4
  br label %192

185:                                              ; preds = %176, %169, %165
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* %15, align 4
  %191 = call i32 @close(i32 %190)
  br label %192

192:                                              ; preds = %185, %181
  br label %193

193:                                              ; preds = %192, %157
  br label %194

194:                                              ; preds = %193, %149
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 3
  %197 = call i32 @pthread_mutex_unlock(i32* %196)
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 4
  %200 = call i32 @memset(i32* %199, i32 0, i32 4)
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 3
  %203 = call i32 @memset(i32* %202, i32 0, i32 4)
  br label %204

204:                                              ; preds = %194, %127
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %10, align 4
  br label %207

207:                                              ; preds = %204, %89
  br label %208

208:                                              ; preds = %207, %45
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %8, align 4
  br label %41

212:                                              ; preds = %41
  %213 = load i32, i32* %5, align 4
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* %5, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %225, label %218

218:                                              ; preds = %212
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 2
  %221 = call i32 @memset(i32* %220, i32 0, i32 4)
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  %224 = call i32 @memset(i32* %223, i32 0, i32 4)
  br label %225

225:                                              ; preds = %218, %212
  %226 = load i32, i32* %10, align 4
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %225, %39, %28
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @lock_whole_file(i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
