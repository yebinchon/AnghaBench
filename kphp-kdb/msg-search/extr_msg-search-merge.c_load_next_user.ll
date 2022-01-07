; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-merge.c_load_next_user.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-merge.c_load_next_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }

@cur_userhdr_size = common dso_local global i64 0, align 8
@riptr = common dso_local global i64 0, align 8
@rpos = common dso_local global i64 0, align 8
@User = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@wiptr = common dso_local global i64 0, align 8
@ibuff = common dso_local global i64 0, align 8
@fd = common dso_local global i32* null, align 8
@FILE_BUFFER_SIZE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"fatal: error reading file %s at position %lld: %m\0A\00", align 1
@fnames = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [69 x i8] c"error reading file %s at pos %lld: %ld bytes available, %d required\0A\00", align 1
@UserHdr = common dso_local global %struct.TYPE_6__* null, align 8
@MAIL_INDEX_BLOCK_MAGIC = common dso_local global i64 0, align 8
@MAX_HASHES = common dso_local global i32 0, align 4
@MAX_DATA = common dso_local global i32 0, align 4
@CurH = common dso_local global i32* null, align 8
@CurL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_next_user() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 24, i32* %3, align 4
  %4 = load i64, i64* @cur_userhdr_size, align 8
  %5 = load i64, i64* @riptr, align 8
  %6 = add nsw i64 %5, %4
  store i64 %6, i64* @riptr, align 8
  %7 = load i64, i64* @cur_userhdr_size, align 8
  %8 = load i64, i64* @rpos, align 8
  %9 = add nsw i64 %8, %7
  store i64 %9, i64* @rpos, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @User, i32 0, i32 0), align 8
  store i64 0, i64* @cur_userhdr_size, align 8
  %10 = load i64, i64* @riptr, align 8
  %11 = load i64, i64* @wiptr, align 8
  %12 = icmp sle i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  br label %15

15:                                               ; preds = %0, %140
  %16 = load i64, i64* @riptr, align 8
  %17 = load i64, i64* @wiptr, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i64, i64* @ibuff, align 8
  store i64 %20, i64* @wiptr, align 8
  store i64 %20, i64* @riptr, align 8
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i64, i64* @wiptr, align 8
  %23 = load i64, i64* @riptr, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %28, label %69

28:                                               ; preds = %21
  %29 = load i64, i64* @ibuff, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_7__*
  %31 = load i64, i64* @riptr, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_6__*
  %33 = load i64, i64* @wiptr, align 8
  %34 = load i64, i64* @riptr, align 8
  %35 = sub nsw i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memcpy(%struct.TYPE_7__* %30, %struct.TYPE_6__* %32, i32 %36)
  %38 = load i64, i64* @riptr, align 8
  %39 = load i64, i64* @ibuff, align 8
  %40 = sub nsw i64 %38, %39
  %41 = load i64, i64* @wiptr, align 8
  %42 = sub nsw i64 %41, %40
  store i64 %42, i64* @wiptr, align 8
  %43 = load i64, i64* @ibuff, align 8
  store i64 %43, i64* @riptr, align 8
  %44 = load i32*, i32** @fd, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* @wiptr, align 8
  %48 = load i64, i64* @ibuff, align 8
  %49 = load i64, i64* @FILE_BUFFER_SIZE, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64, i64* @wiptr, align 8
  %52 = sub nsw i64 %50, %51
  %53 = call i32 @read(i32 %46, i64 %47, i64 %52)
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %28
  %57 = load i32, i32* @stderr, align 4
  %58 = load i8**, i8*** @fnames, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i64, i64* @rpos, align 8
  %62 = call i32 (i32, i8*, i8*, i64, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %60, i64 %61)
  %63 = call i32 (...) @fail()
  store i32 -1, i32* %1, align 4
  br label %158

64:                                               ; preds = %28
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @wiptr, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* @wiptr, align 8
  br label %69

69:                                               ; preds = %64, %21
  %70 = load i64, i64* @wiptr, align 8
  %71 = load i64, i64* @riptr, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 0, i32* %1, align 4
  br label %158

74:                                               ; preds = %69
  %75 = load i64, i64* @wiptr, align 8
  %76 = load i64, i64* @riptr, align 8
  %77 = sub nsw i64 %75, %76
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %74
  %82 = load i32, i32* @stderr, align 4
  %83 = load i8**, i8*** @fnames, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i64, i64* @rpos, align 8
  %87 = load i64, i64* @wiptr, align 8
  %88 = load i64, i64* @riptr, align 8
  %89 = sub nsw i64 %87, %88
  %90 = load i32, i32* %3, align 4
  %91 = call i32 (i32, i8*, i8*, i64, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8* %85, i64 %86, i64 %89, i32 %90)
  store i32 0, i32* %1, align 4
  br label %158

92:                                               ; preds = %74
  %93 = load i64, i64* @riptr, align 8
  %94 = inttoptr i64 %93 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** @UserHdr, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @UserHdr, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @MAIL_INDEX_BLOCK_MAGIC, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @UserHdr, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @UserHdr, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MAX_HASHES, align 4
  %112 = icmp ule i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %92
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** @UserHdr, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @MAX_DATA, align 4
  %118 = icmp ule i32 %116, %117
  br label %119

119:                                              ; preds = %113, %92
  %120 = phi i1 [ false, %92 ], [ %118, %113 ]
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** @UserHdr, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = mul nsw i32 %125, 16
  %127 = sext i32 %126 to i64
  %128 = add i64 24, %127
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @UserHdr, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %131, 4
  %133 = sext i32 %132 to i64
  %134 = add i64 %128, %133
  store i64 %134, i64* @cur_userhdr_size, align 8
  %135 = load i64, i64* @wiptr, align 8
  %136 = load i64, i64* @riptr, align 8
  %137 = sub nsw i64 %135, %136
  %138 = load i64, i64* @cur_userhdr_size, align 8
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %119
  %141 = load i64, i64* @cur_userhdr_size, align 8
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %3, align 4
  br label %15

143:                                              ; preds = %119
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** @UserHdr, align 8
  %145 = call i32 @memcpy(%struct.TYPE_7__* @User, %struct.TYPE_6__* %144, i32 24)
  %146 = load i64, i64* @riptr, align 8
  %147 = add i64 %146, 24
  %148 = inttoptr i64 %147 to i32*
  store i32* %148, i32** @CurH, align 8
  %149 = load i64, i64* @riptr, align 8
  %150 = add i64 %149, 24
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @User, i32 0, i32 1), align 8
  %152 = mul nsw i32 %151, 16
  %153 = sext i32 %152 to i64
  %154 = add i64 %150, %153
  %155 = inttoptr i64 %154 to i32*
  store i32* %155, i32** @CurL, align 8
  %156 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @User, i32 0, i32 0), align 8
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %1, align 4
  br label %158

158:                                              ; preds = %143, %81, %73, %56
  %159 = load i32, i32* %1, align 4
  ret i32 %159
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @read(i32, i64, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i64, ...) #1

declare dso_local i32 @fail(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
