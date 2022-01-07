; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_parse_pack_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_parse_pack_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.packed_git* @parse_pack_index(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.packed_git*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @sha1_pack_name(i8* %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = call i64 @st_add(i32 %12, i32 1)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call %struct.packed_git* @alloc_packed_git(i64 %14)
  store %struct.packed_git* %15, %struct.packed_git** %8, align 8
  %16 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %17 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @memcpy(i32 %18, i8* %19, i64 %20)
  %22 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %23 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @hashcpy(i32 %24, i8* %25)
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %29 = call i64 @check_packed_git_idx(i8* %27, %struct.packed_git* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %33 = call i32 @free(%struct.packed_git* %32)
  store %struct.packed_git* null, %struct.packed_git** %3, align 8
  br label %36

34:                                               ; preds = %2
  %35 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  store %struct.packed_git* %35, %struct.packed_git** %3, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  ret %struct.packed_git* %37
}

declare dso_local i8* @sha1_pack_name(i8*) #1

declare dso_local i64 @st_add(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.packed_git* @alloc_packed_git(i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @hashcpy(i32, i8*) #1

declare dso_local i64 @check_packed_git_idx(i8*, %struct.packed_git*) #1

declare dso_local i32 @free(%struct.packed_git*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
