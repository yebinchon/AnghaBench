; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_add_event_to_news.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_add_event_to_news.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32* }
%struct.TYPE_8__ = type { i32 }

@to_add_n = common dso_local global i64 0, align 8
@to_del_n = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [121 x i8] c"BAD REDIRECT from %lld to %lld[%s](we are here) : ref_cnt = %d, ev_first = %p, keys_cnt = %d, subscr_cnt = %d, ttl = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"  ids[i].y = %d, v->val = %d, x = %d, y = %d, %d =?= %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"<!>%d\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"BAD REDIRECT from %lld to NULL, ttl = %d\0A\00", align 1
@to_add = common dso_local global i32 0, align 4
@to_del = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_event_to_news(i32 %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_10__* %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %22 = load i8*, i8** %15, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %17, align 4
  store i64 0, i64* @to_add_n, align 8
  store i64 0, i64* @to_del_n, align 8
  store i32 0, i32* %18, align 4
  br label %24

24:                                               ; preds = %186, %8
  %25 = load i32, i32* %18, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %189

28:                                               ; preds = %24
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %30 = load i32, i32* %18, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @IS_UID(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %185, label %37

37:                                               ; preds = %28
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %39 = load i32, i32* %18, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_9__* @get_news_queue(i32 %43, i32 0)
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %19, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %46 = icmp ne %struct.TYPE_9__* %45, null
  br i1 %46, label %47, label %169

47:                                               ; preds = %37
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call %struct.TYPE_8__* @treap_fnd(i32* %56, i32 %57)
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %20, align 8
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %108

61:                                               ; preds = %47
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 (i8*, i32, i32, ...) @critical(i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %68, i32 %71, i32 %74, i32 %77, i32 %80, i32 %83, i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %87 = icmp ne %struct.TYPE_8__* %86, null
  br i1 %87, label %88, label %107

88:                                               ; preds = %61
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %100, %103
  %105 = load i32, i32* %11, align 4
  %106 = call i32 (i8*, i32, i32, ...) @critical(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %97, i32 %98, i32 %99, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %88, %61
  br label %108

108:                                              ; preds = %107, %47
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %110 = icmp ne %struct.TYPE_8__* %109, null
  br i1 %110, label %111, label %160

111:                                              ; preds = %108
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %114, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %111
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %124 = load i32, i32* %18, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @insert_to_add(i32 %128, i32 %131)
  br label %133

133:                                              ; preds = %122, %111
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %134, %137
  %139 = load i32, i32* %11, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %159

141:                                              ; preds = %133
  %142 = load i8*, i8** %15, align 8
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @sprintf(i8* %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  store i32 %149, i32* %21, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %151 = load i8*, i8** %15, align 8
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* %21, align 4
  %154 = add nsw i32 %152, %153
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @add_event(%struct.TYPE_9__* %150, i8* %151, i32 %154, i32 %155, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %141, %133
  br label %168

160:                                              ; preds = %108
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %162 = load i32, i32* %18, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @insert_to_del(i32 %166)
  br label %168

168:                                              ; preds = %160, %159
  br label %184

169:                                              ; preds = %37
  %170 = load i32, i32* %16, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %12, align 4
  %175 = call i32 (i8*, i32, i32, ...) @critical(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %172, %169
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %178 = load i32, i32* %18, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @insert_to_del(i32 %182)
  br label %184

184:                                              ; preds = %176, %168
  br label %185

185:                                              ; preds = %184, %28
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %18, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %18, align 4
  br label %24

189:                                              ; preds = %24
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* @to_add, align 4
  %192 = load i64, i64* @to_add_n, align 8
  %193 = call i32 @process_changes(i32 %190, i32* null, i32 %191, i64 %192, i32 1, i32 1)
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* @to_del, align 4
  %196 = load i64, i64* @to_del_n, align 8
  %197 = call i32 @process_changes(i32 %194, i32* null, i32 %195, i64 %196, i32 0, i32 1)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @IS_UID(i32) #1

declare dso_local %struct.TYPE_9__* @get_news_queue(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_8__* @treap_fnd(i32*, i32) #1

declare dso_local i32 @critical(i8*, i32, i32, ...) #1

declare dso_local i32 @insert_to_add(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @add_event(%struct.TYPE_9__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @insert_to_del(i32) #1

declare dso_local i32 @process_changes(i32, i32*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
