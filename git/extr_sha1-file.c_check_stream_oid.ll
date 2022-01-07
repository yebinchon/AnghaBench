; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_check_stream_oid.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_check_stream_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32, i32*)*, i32 (i32*, i8*, i32)*, i32 (i32*)* }
%struct.TYPE_6__ = type { i32, i32, i8*, i64 }
%struct.object_id = type { i32 }

@Z_OK = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_7__* null, align 8
@Z_BUF_ERROR = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"corrupt loose object '%s'\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"garbage at end of loose object '%s'\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"hash mismatch for %s (expected %s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64, i8*, %struct.object_id*)* @check_stream_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_stream_oid(%struct.TYPE_6__* %0, i8* %1, i64 %2, i8* %3, %struct.object_id* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.object_id*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.object_id, align 4
  %14 = alloca [4096 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.object_id* %4, %struct.object_id** %11, align 8
  %17 = load i32, i32* @Z_OK, align 4
  store i32 %17, i32* %16, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @the_hash_algo, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32 (i32*)*, i32 (i32*)** %19, align 8
  %21 = call i32 %20(i32* %12)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @the_hash_algo, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %23, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %24(i32* %12, i8* %25, i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = sub nsw i32 %32, %34
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %15, align 8
  br label %38

38:                                               ; preds = %83, %5
  %39 = load i64, i64* %15, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ule i64 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @Z_OK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %58, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* @Z_BUF_ERROR, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %50, %46
  %57 = phi i1 [ false, %46 ], [ %55, %50 ]
  br label %58

58:                                               ; preds = %56, %42
  %59 = phi i1 [ true, %42 ], [ %57, %56 ]
  br label %60

60:                                               ; preds = %58, %38
  %61 = phi i1 [ false, %38 ], [ %59, %58 ]
  br i1 %61, label %62, label %109

62:                                               ; preds = %60
  %63 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 4096, i32* %67, align 4
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %15, align 8
  %70 = sub i64 %68, %69
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp ult i64 %70, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %62
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %15, align 8
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %76, %62
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %85 = load i32, i32* @Z_FINISH, align 4
  %86 = call i32 @git_inflate(%struct.TYPE_6__* %84, i32 %85)
  store i32 %86, i32* %16, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** @the_hash_algo, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %88, align 8
  %90 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  %99 = call i32 %89(i32* %12, i8* %90, i32 %98)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = load i64, i64* %15, align 8
  %108 = add i64 %107, %106
  store i64 %108, i64* %15, align 8
  br label %38

109:                                              ; preds = %60
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %111 = call i32 @git_inflate_end(%struct.TYPE_6__* %110)
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* @Z_STREAM_END, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %117 = load %struct.object_id*, %struct.object_id** %11, align 8
  %118 = call i8* @oid_to_hex(%struct.object_id* %117)
  %119 = call i32 (i32, i8*, ...) @error(i32 %116, i8* %118)
  store i32 -1, i32* %6, align 4
  br label %147

120:                                              ; preds = %109
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %127 = load %struct.object_id*, %struct.object_id** %11, align 8
  %128 = call i8* @oid_to_hex(%struct.object_id* %127)
  %129 = call i32 (i32, i8*, ...) @error(i32 %126, i8* %128)
  store i32 -1, i32* %6, align 4
  br label %147

130:                                              ; preds = %120
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** @the_hash_algo, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32 (i32, i32*)*, i32 (i32, i32*)** %132, align 8
  %134 = getelementptr inbounds %struct.object_id, %struct.object_id* %13, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 %133(i32 %135, i32* %12)
  %137 = load %struct.object_id*, %struct.object_id** %11, align 8
  %138 = call i32 @oideq(%struct.object_id* %137, %struct.object_id* %13)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %130
  %141 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %142 = load i8*, i8** %10, align 8
  %143 = load %struct.object_id*, %struct.object_id** %11, align 8
  %144 = call i8* @oid_to_hex(%struct.object_id* %143)
  %145 = call i32 (i32, i8*, ...) @error(i32 %141, i8* %142, i8* %144)
  store i32 -1, i32* %6, align 4
  br label %147

146:                                              ; preds = %130
  store i32 0, i32* %6, align 4
  br label %147

147:                                              ; preds = %146, %140, %125, %115
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @git_inflate(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @git_inflate_end(%struct.TYPE_6__*) #1

declare dso_local i32 @error(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @oideq(%struct.object_id*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
