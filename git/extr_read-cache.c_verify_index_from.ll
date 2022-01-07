; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_verify_index_from.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_verify_index_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.index_state = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.stat = type { i64 }

@GIT_MAX_RAWSZ = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, i8*)* @verify_index_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_index_from(%struct.index_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @GIT_MAX_RAWSZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.index_state*, %struct.index_state** %4, align 8
  %17 = getelementptr inbounds %struct.index_state, %struct.index_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %74

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @O_RDONLY, align 4
  %24 = call i32 @open(i8* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %74

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @fstat(i32 %29, %struct.stat* %8)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %71

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 4, %38
  %40 = icmp ult i64 %35, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %71

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = call i64 @pread_in_full(i32 %43, i8* %15, i64 %46, i64 %52)
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %42
  br label %71

60:                                               ; preds = %42
  %61 = load %struct.index_state*, %struct.index_state** %4, align 8
  %62 = getelementptr inbounds %struct.index_state, %struct.index_state* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @hasheq(i32 %64, i8* %15)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %71

68:                                               ; preds = %60
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @close(i32 %69)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %74

71:                                               ; preds = %67, %59, %41, %32
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @close(i32 %72)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %74

74:                                               ; preds = %71, %68, %27, %20
  %75 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i64 @pread_in_full(i32, i8*, i64, i64) #2

declare dso_local i32 @hasheq(i32, i8*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
