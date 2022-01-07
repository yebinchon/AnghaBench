; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_oid.c_git_oid_fromstrn.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_oid.c_git_oid_fromstrn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [10 x i8] c"too short\00", align 1
@GIT_OID_HEXSZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"too long\00", align 1
@GIT_OID_RAWSZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"contains invalid characters\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_oid_fromstrn(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi i1 [ false, %3 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = call i32 @oid_error_invalid(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %4, align 4
  br label %73

23:                                               ; preds = %15
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @oid_error_invalid(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %4, align 4
  br label %73

29:                                               ; preds = %23
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @GIT_OID_RAWSZ, align 4
  %34 = call i32 @memset(i8* %32, i32 0, i32 %33)
  store i64 0, i64* %8, align 8
  br label %35

35:                                               ; preds = %69, %29
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %35
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = call i32 @git__fromhex(i8 signext %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call i32 @oid_error_invalid(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 %48, i32* %4, align 4
  br label %73

49:                                               ; preds = %39
  %50 = load i32, i32* %9, align 4
  %51 = load i64, i64* %8, align 8
  %52 = urem i64 %51, 2
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 0, i32 4
  %56 = shl i32 %50, %55
  %57 = trunc i32 %56 to i8
  %58 = zext i8 %57 to i32
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = udiv i64 %62, 2
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = or i32 %66, %58
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %64, align 1
  br label %69

69:                                               ; preds = %49
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %8, align 8
  br label %35

72:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %47, %27, %21
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @oid_error_invalid(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @git__fromhex(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
