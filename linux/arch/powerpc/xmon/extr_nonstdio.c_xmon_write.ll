; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_nonstdio.c_xmon_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_nonstdio.c_xmon_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.xmon_write.msg = private unnamed_addr constant [47 x i8] c"[Hit a key (a:all, q:truncate, any:next page)]\00", align 16
@paginating = common dso_local global i32 0, align 4
@paginate_skipping = common dso_local global i32 0, align 4
@paginate_lpp = common dso_local global i64 0, align 8
@paginate_pos = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @xmon_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmon_write(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [47 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %7, align 8
  %11 = bitcast [47 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 getelementptr inbounds ([47 x i8], [47 x i8]* @__const.xmon_write.msg, i32 0, i32 0), i64 47, i1 false)
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %88

16:                                               ; preds = %2
  %17 = load i32, i32* @paginating, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* @paginate_skipping, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %3, align 4
  br label %88

24:                                               ; preds = %19, %16
  %25 = load i64, i64* @paginate_lpp, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %72, %27
  %29 = load i32, i32* @paginating, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i8*, i8** %7, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 10)
  store i8* %33, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %73

37:                                               ; preds = %35
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = add nsw i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = call i32 @udbg_write(i8* %38, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %7, align 8
  %51 = load i64, i64* @paginate_pos, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* @paginate_pos, align 8
  %53 = load i64, i64* @paginate_pos, align 8
  %54 = load i64, i64* @paginate_lpp, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %37
  %57 = getelementptr inbounds [47 x i8], [47 x i8]* %9, i64 0, i64 0
  %58 = getelementptr inbounds [47 x i8], [47 x i8]* %9, i64 0, i64 0
  %59 = call i32 @strlen(i8* %58)
  %60 = call i32 @udbg_write(i8* %57, i32 %59)
  %61 = call i32 (...) @xmon_readchar()
  switch i32 %61, label %64 [
    i32 97, label %62
    i32 113, label %63
  ]

62:                                               ; preds = %56
  store i32 0, i32* @paginating, align 4
  br label %65

63:                                               ; preds = %56
  store i32 1, i32* @paginate_skipping, align 4
  br label %65

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %63, %62
  store i64 0, i64* @paginate_pos, align 8
  %66 = call i32 @udbg_write(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %67 = load i32, i32* @paginate_skipping, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %3, align 4
  br label %88

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %37
  br label %28

73:                                               ; preds = %35
  br label %74

74:                                               ; preds = %73, %24
  %75 = load i32, i32* %6, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sub nsw i64 %78, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32 @udbg_write(i8* %76, i32 %85)
  %87 = add nsw i32 %75, %86
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %74, %69, %22, %14
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @udbg_write(i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @xmon_readchar(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
