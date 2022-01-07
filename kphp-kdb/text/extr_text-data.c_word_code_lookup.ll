; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_word_code_lookup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_word_code_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_word_dictionary_entry = type { i32 }
%struct.word_dictionary = type { i32, i32*, %struct.file_word_dictionary_entry*** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file_word_dictionary_entry* (%struct.word_dictionary*, i32, i32*)* @word_code_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file_word_dictionary_entry* @word_code_lookup(%struct.word_dictionary* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.word_dictionary*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.word_dictionary* %0, %struct.word_dictionary** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 -1, i32* %7, align 4
  %10 = load %struct.word_dictionary*, %struct.word_dictionary** %4, align 8
  %11 = getelementptr inbounds %struct.word_dictionary, %struct.word_dictionary* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  br label %13

13:                                               ; preds = %36, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %14, %15
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %37

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %19, %20
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %9, align 4
  %23 = load %struct.word_dictionary*, %struct.word_dictionary** %4, align 8
  %24 = getelementptr inbounds %struct.word_dictionary, %struct.word_dictionary* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ule i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %7, align 4
  br label %36

34:                                               ; preds = %18
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %34, %32
  br label %13

37:                                               ; preds = %13
  %38 = load i32, i32* %7, align 4
  %39 = icmp sge i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.word_dictionary*, %struct.word_dictionary** %4, align 8
  %46 = getelementptr inbounds %struct.word_dictionary, %struct.word_dictionary* %45, i32 0, i32 2
  %47 = load %struct.file_word_dictionary_entry***, %struct.file_word_dictionary_entry**** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.file_word_dictionary_entry**, %struct.file_word_dictionary_entry*** %47, i64 %49
  %51 = load %struct.file_word_dictionary_entry**, %struct.file_word_dictionary_entry*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 31, %53
  %55 = lshr i32 %52, %54
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.file_word_dictionary_entry*, %struct.file_word_dictionary_entry** %51, i64 %56
  %58 = load %struct.file_word_dictionary_entry*, %struct.file_word_dictionary_entry** %57, align 8
  ret %struct.file_word_dictionary_entry* %58
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
