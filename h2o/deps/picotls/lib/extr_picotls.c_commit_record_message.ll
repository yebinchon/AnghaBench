; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_commit_record_message.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_commit_record_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_ptls_record_message_emitter_t = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i8** }
%struct.TYPE_6__ = type { i32* }

@PTLS_MAX_PLAINTEXT_RECORD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @commit_record_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_record_message(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.st_ptls_record_message_emitter_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = bitcast i8* %7 to %struct.st_ptls_record_message_emitter_t*
  store %struct.st_ptls_record_message_emitter_t* %8, %struct.st_ptls_record_message_emitter_t** %3, align 8
  %9 = load %struct.st_ptls_record_message_emitter_t*, %struct.st_ptls_record_message_emitter_t** %3, align 8
  %10 = getelementptr inbounds %struct.st_ptls_record_message_emitter_t, %struct.st_ptls_record_message_emitter_t* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.st_ptls_record_message_emitter_t*, %struct.st_ptls_record_message_emitter_t** %3, align 8
  %18 = getelementptr inbounds %struct.st_ptls_record_message_emitter_t, %struct.st_ptls_record_message_emitter_t* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load %struct.st_ptls_record_message_emitter_t*, %struct.st_ptls_record_message_emitter_t** %3, align 8
  %22 = getelementptr inbounds %struct.st_ptls_record_message_emitter_t, %struct.st_ptls_record_message_emitter_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.st_ptls_record_message_emitter_t*, %struct.st_ptls_record_message_emitter_t** %3, align 8
  %25 = getelementptr inbounds %struct.st_ptls_record_message_emitter_t, %struct.st_ptls_record_message_emitter_t* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call i32 @buffer_encrypt_record(%struct.TYPE_5__* %20, i32 %23, %struct.TYPE_6__* %27)
  store i32 %28, i32* %4, align 4
  br label %76

29:                                               ; preds = %1
  %30 = load %struct.st_ptls_record_message_emitter_t*, %struct.st_ptls_record_message_emitter_t** %3, align 8
  %31 = getelementptr inbounds %struct.st_ptls_record_message_emitter_t, %struct.st_ptls_record_message_emitter_t* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.st_ptls_record_message_emitter_t*, %struct.st_ptls_record_message_emitter_t** %3, align 8
  %37 = getelementptr inbounds %struct.st_ptls_record_message_emitter_t, %struct.st_ptls_record_message_emitter_t* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %35, %38
  %40 = sub nsw i32 %39, 5
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @PTLS_MAX_PLAINTEXT_RECORD_SIZE, align 8
  %44 = icmp ule i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i64, i64* %5, align 8
  %48 = lshr i64 %47, 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.st_ptls_record_message_emitter_t*, %struct.st_ptls_record_message_emitter_t** %3, align 8
  %51 = getelementptr inbounds %struct.st_ptls_record_message_emitter_t, %struct.st_ptls_record_message_emitter_t* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i8**, i8*** %54, align 8
  %56 = load %struct.st_ptls_record_message_emitter_t*, %struct.st_ptls_record_message_emitter_t** %3, align 8
  %57 = getelementptr inbounds %struct.st_ptls_record_message_emitter_t, %struct.st_ptls_record_message_emitter_t* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %55, i64 %60
  store i8* %49, i8** %61, align 8
  %62 = load i64, i64* %5, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.st_ptls_record_message_emitter_t*, %struct.st_ptls_record_message_emitter_t** %3, align 8
  %65 = getelementptr inbounds %struct.st_ptls_record_message_emitter_t, %struct.st_ptls_record_message_emitter_t* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i8**, i8*** %68, align 8
  %70 = load %struct.st_ptls_record_message_emitter_t*, %struct.st_ptls_record_message_emitter_t** %3, align 8
  %71 = getelementptr inbounds %struct.st_ptls_record_message_emitter_t, %struct.st_ptls_record_message_emitter_t* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %69, i64 %74
  store i8* %63, i8** %75, align 8
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %29, %16
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @buffer_encrypt_record(%struct.TYPE_5__*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
