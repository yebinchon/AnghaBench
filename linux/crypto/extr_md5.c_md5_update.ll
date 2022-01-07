; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_md5.c_md5_update.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_md5.c_md5_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.md5_state = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @md5_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md5_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.md5_state*, align 8
  %9 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %11 = call %struct.md5_state* @shash_desc_ctx(%struct.shash_desc* %10)
  store %struct.md5_state* %11, %struct.md5_state** %8, align 8
  %12 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %13 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 63
  %16 = sext i32 %15 to i64
  %17 = sub i64 8, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %21 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %3
  %28 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %29 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = sub i64 8, %32
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @memcpy(i8* %34, i32* %35, i32 %36)
  store i32 0, i32* %4, align 4
  br label %83

38:                                               ; preds = %3
  %39 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %40 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = sub i64 8, %43
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @memcpy(i8* %45, i32* %46, i32 %47)
  %49 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %50 = call i32 @md5_transform_helper(%struct.md5_state* %49)
  %51 = load i32, i32* %9, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %62, %38
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = icmp uge i64 %60, 8
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %64 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @memcpy(i8* %65, i32* %66, i32 8)
  %68 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %69 = call i32 @md5_transform_helper(%struct.md5_state* %68)
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 8
  store i32* %71, i32** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = sub i64 %73, 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %7, align 4
  br label %58

76:                                               ; preds = %58
  %77 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %78 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @memcpy(i8* %79, i32* %80, i32 %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %76, %27
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.md5_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @md5_transform_helper(%struct.md5_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
