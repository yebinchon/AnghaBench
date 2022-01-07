; ModuleID = '/home/carl/AnghaBench/libgit2/tests/transports/smart/extr_packet.c_assert_ref_parses_.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/transports/smart/extr_packet.c_assert_ref_parses_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@GIT_PKT_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i8*, i8*)* @assert_ref_parses_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_ref_parses_(i8* %0, i64 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @git_oid_fromstr(i32* %13, i8* %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = bitcast %struct.TYPE_4__** %12 to i32**
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @git_pkt_parse_line(i32** %17, i8** %11, i8* %18, i64 %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GIT_PKT_REF, align 4
  %26 = call i32 @cl_assert_equal_i(i32 %24, i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = call i32 @cl_assert_equal_oid(i32* %29, i32* %13)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = call i32 @cl_assert_equal_strn(i32 %34, i8* %35, i32 %37)
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %5
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = call i32 @cl_assert_equal_strn(i32 %44, i8* %45, i32 %47)
  br label %54

49:                                               ; preds = %5
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cl_assert_equal_p(i32* null, i32 %52)
  br label %54

54:                                               ; preds = %49, %41
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %56 = bitcast %struct.TYPE_4__* %55 to i32*
  %57 = call i32 @git_pkt_free(i32* %56)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_pkt_parse_line(i32**, i8**, i8*, i64) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_strn(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cl_assert_equal_p(i32*, i32) #1

declare dso_local i32 @git_pkt_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
