; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_string_copy_replace_bad.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_string_copy_replace_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i8*, i32, i32 }

@JVP_FLAGS_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*, i32)* @jvp_string_copy_replace_bad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jvp_string_copy_replace_bad(%struct.TYPE_8__* noalias sret %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %1, i8** %4, align 8
  store i32 %2, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %18, 3
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.TYPE_7__* @jvp_string_alloc(i32 %21)
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %10, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %35, %3
  %27 = load i8*, i8** %7, align 8
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i8* @jvp_utf8_next(i8* %27, i8* %28, i32* %12)
  store i8* %29, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 65533, i32* %12, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %12, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @jvp_utf8_encode(i32 %36, i8* %37)
  %39 = load i8*, i8** %11, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = icmp ult i8* %42, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  br label %26

52:                                               ; preds = %26
  %53 = load i8*, i8** %11, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = ptrtoint i8* %53 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8 0, i8* %66, align 1
  %67 = load i32, i32* %5, align 4
  %68 = shl i32 %67, 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* @JVP_FLAGS_STRING, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i32*
  store i32* %75, i32** %72, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  store i32 0, i32* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  store i32 0, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  store i32 0, i32* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = ptrtoint i32* %81 to i32
  store i32 %82, i32* %79, align 4
  ret void
}

declare dso_local %struct.TYPE_7__* @jvp_string_alloc(i32) #1

declare dso_local i8* @jvp_utf8_next(i8*, i8*, i32*) #1

declare dso_local i32 @jvp_utf8_encode(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
