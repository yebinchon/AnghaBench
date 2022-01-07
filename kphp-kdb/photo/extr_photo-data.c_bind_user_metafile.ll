; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_bind_user_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_bind_user_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i32*, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"bind user metafile local id = %d (%p)\0A\00", align 1
@users = common dso_local global %struct.TYPE_6__* null, align 8
@EMPTY__METAFILE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"empty metafile found\0A\00", align 1
@header = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bind_user_metafile(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load i32, i32* @verbosity, align 4
  %8 = icmp sgt i32 %7, 2
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @users, align 8
  %13 = ptrtoint %struct.TYPE_6__* %11 to i64
  %14 = ptrtoint %struct.TYPE_6__* %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 40
  %17 = trunc i64 %16 to i32
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %17, %struct.TYPE_6__* %18)
  br label %20

20:                                               ; preds = %9, %1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @users, align 8
  %23 = ptrtoint %struct.TYPE_6__* %21 to i64
  %24 = ptrtoint %struct.TYPE_6__* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 40
  %27 = trunc i64 %26 to i32
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %27, %struct.TYPE_6__* %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @users, align 8
  %32 = ptrtoint %struct.TYPE_6__* %30 to i64
  %33 = ptrtoint %struct.TYPE_6__* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 40
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %20
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** @EMPTY__METAFILE, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %41, %20
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 6
  %57 = load i8*, i8** @EMPTY__METAFILE, align 8
  %58 = call i32 @data_load(i32* %56, i8* %57, i32 4)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 5
  %61 = call i32 @lookup_load(i32* %60, i8* null, i32 0)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 0, i32* %63, align 8
  br label %176

64:                                               ; preds = %41
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %67, 4
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = icmp sle i32 1, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 0), align 4
  %76 = icmp sle i32 %74, %75
  br label %77

77:                                               ; preds = %73, %64
  %78 = phi i1 [ false, %64 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %5, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %6, align 4
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @READ_INT(i8* %87, i32 %88)
  %90 = load i8*, i8** %5, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = sub i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32 @crc32_check_and_repair(i8* %90, i32 %96, i32* %4, i32 1)
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @READ_INT(i8* %98, i32 %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 6
  %103 = load i8*, i8** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @data_load(i32* %102, i8* %103, i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = load i8*, i8** %5, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %5, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @READ_INT(i8* %110, i32 %113)
  %115 = load i8*, i8** %5, align 8
  %116 = bitcast i8* %115 to i32*
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  store i32* %116, i32** %118, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = mul i64 4, %122
  %124 = load i8*, i8** %5, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 %123
  store i8* %125, i8** %5, align 8
  %126 = load i8*, i8** %5, align 8
  %127 = bitcast i8* %126 to i32*
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 4
  store i32* %127, i32** %129, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = mul i64 4, %134
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 %135
  store i8* %137, i8** %5, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %140, i64 %150
  store i8* %151, i8** %5, align 8
  %152 = load i8*, i8** %5, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @READ_INT(i8* %152, i32 %153)
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 5
  %157 = load i8*, i8** %5, align 8
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @lookup_load(i32* %156, i8* %157, i32 %158)
  %160 = load i32, i32* %6, align 4
  %161 = load i8*, i8** %5, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %5, align 8
  %164 = load i8*, i8** %5, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %167, i64 %171
  %173 = icmp ule i8* %164, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  br label %176

176:                                              ; preds = %77, %47
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @data_load(i32*, i8*, i32) #1

declare dso_local i32 @lookup_load(i32*, i8*, i32) #1

declare dso_local i32 @READ_INT(i8*, i32) #1

declare dso_local i32 @crc32_check_and_repair(i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
