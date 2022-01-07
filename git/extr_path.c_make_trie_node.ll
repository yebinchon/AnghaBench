; ModuleID = '/home/carl/AnghaBench/git/extr_path.c_make_trie_node.c'
source_filename = "/home/carl/AnghaBench/git/extr_path.c_make_trie_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trie = type { i8*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trie* (i8*, i8*)* @make_trie_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trie* @make_trie_node(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.trie*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call %struct.trie* @xcalloc(i32 1, i32 24)
  store %struct.trie* %6, %struct.trie** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strlen(i8* %7)
  %9 = load %struct.trie*, %struct.trie** %5, align 8
  %10 = getelementptr inbounds %struct.trie, %struct.trie* %9, i32 0, i32 1
  store i64 %8, i64* %10, align 8
  %11 = load %struct.trie*, %struct.trie** %5, align 8
  %12 = getelementptr inbounds %struct.trie, %struct.trie* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.trie*, %struct.trie** %5, align 8
  %17 = getelementptr inbounds %struct.trie, %struct.trie* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @xmalloc(i64 %18)
  %20 = load %struct.trie*, %struct.trie** %5, align 8
  %21 = getelementptr inbounds %struct.trie, %struct.trie* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.trie*, %struct.trie** %5, align 8
  %23 = getelementptr inbounds %struct.trie, %struct.trie* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load %struct.trie*, %struct.trie** %5, align 8
  %27 = getelementptr inbounds %struct.trie, %struct.trie* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @memcpy(i32 %24, i8* %25, i64 %28)
  br label %30

30:                                               ; preds = %15, %2
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.trie*, %struct.trie** %5, align 8
  %33 = getelementptr inbounds %struct.trie, %struct.trie* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.trie*, %struct.trie** %5, align 8
  ret %struct.trie* %34
}

declare dso_local %struct.trie* @xcalloc(i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @xmalloc(i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
