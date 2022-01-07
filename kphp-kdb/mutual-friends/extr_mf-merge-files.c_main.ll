; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-merge-files.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-merge-files.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXH = common dso_local global i32 0, align 4
@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"hU:E:T:F:B:to:u:\00", align 1
@optarg = common dso_local global i8* null, align 8
@userN = common dso_local global i32 0, align 4
@engineN = common dso_local global i32 0, align 4
@this_mod = common dso_local global i64 0, align 8
@friends_name = common dso_local global i8* null, align 8
@exceptions_name = common dso_local global i8* null, align 8
@test_mode = common dso_local global i32 0, align 4
@out_name = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@friendsI = common dso_local global i32 0, align 4
@exceptionsI = common dso_local global i32 0, align 4
@ansI = common dso_local global i64 0, align 8
@fsz = common dso_local global i32 0, align 4
@fd = common dso_local global i32* null, align 8
@un = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* @MAXH, align 4
  %8 = load i32, i32* @MAXH, align 4
  %9 = sub nsw i32 %8, 1
  %10 = and i32 %7, %9
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = call i32 (...) @set_debug_handlers()
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** @progname, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %125

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %53, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %6, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %54

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %53 [
    i32 104, label %30
    i32 85, label %32
    i32 69, label %36
    i32 84, label %40
    i32 70, label %44
    i32 66, label %46
    i32 116, label %48
    i32 111, label %49
    i32 117, label %51
  ]

30:                                               ; preds = %28
  %31 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %125

32:                                               ; preds = %28
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i8* @atoi(i8* %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* @userN, align 4
  br label %53

36:                                               ; preds = %28
  %37 = load i8*, i8** @optarg, align 8
  %38 = call i8* @atoi(i8* %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* @engineN, align 4
  br label %53

40:                                               ; preds = %28
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i8* @atoi(i8* %41)
  %43 = ptrtoint i8* %42 to i64
  store i64 %43, i64* @this_mod, align 8
  br label %53

44:                                               ; preds = %28
  %45 = load i8*, i8** @optarg, align 8
  store i8* %45, i8** @friends_name, align 8
  br label %53

46:                                               ; preds = %28
  %47 = load i8*, i8** @optarg, align 8
  store i8* %47, i8** @exceptions_name, align 8
  br label %53

48:                                               ; preds = %28
  store i32 1, i32* @test_mode, align 4
  br label %53

49:                                               ; preds = %28
  %50 = load i8*, i8** @optarg, align 8
  store i8* %50, i8** @out_name, align 8
  br label %53

51:                                               ; preds = %28
  %52 = load i8*, i8** @optarg, align 8
  store i8* %52, i8** @username, align 8
  br label %53

53:                                               ; preds = %28, %51, %49, %48, %46, %44, %40, %36, %32
  br label %23

54:                                               ; preds = %23
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @optind, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %125

60:                                               ; preds = %54
  %61 = load i8*, i8** @username, align 8
  %62 = call i64 @change_user(i8* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i32, i32* @stderr, align 4
  %66 = load i8*, i8** @username, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i8*, i8** @username, align 8
  br label %71

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i8* [ %69, %68 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %70 ]
  %73 = call i32 @fprintf(i32 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  %74 = call i32 @exit(i32 1) #3
  unreachable

75:                                               ; preds = %60
  %76 = load i32, i32* @userN, align 4
  %77 = icmp sge i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load i32, i32* @engineN, align 4
  %81 = icmp sge i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i64, i64* @this_mod, align 8
  %85 = icmp sge i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load i32, i32* @engineN, align 4
  store i32 %88, i32* @friendsI, align 4
  %89 = load i32, i32* @engineN, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @exceptionsI, align 4
  %91 = load i32, i32* @engineN, align 4
  %92 = add nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  store i64 %93, i64* @ansI, align 8
  %94 = load i32, i32* @engineN, align 4
  %95 = add nsw i32 %94, 3
  %96 = call i32 @init_files(i32 %95)
  %97 = load i64, i64* @ansI, align 8
  %98 = load i8*, i8** @out_name, align 8
  %99 = call i32 @open_file(i64 %97, i8* %98, i32 2)
  store i32 -1, i32* @fsz, align 4
  %100 = load i32*, i32** @fd, align 8
  %101 = load i64, i64* @ansI, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @write(i32 %103, i32* @fsz, i32 8)
  store i32 8, i32* @fsz, align 4
  %105 = load i32, i32* @userN, align 4
  %106 = load i32, i32* @engineN, align 4
  %107 = sdiv i32 %105, %106
  store i32 %107, i32* @un, align 4
  %108 = call i32 (...) @init_data()
  %109 = call i32 (...) @run()
  %110 = call i32 (...) @flush_w_buff()
  %111 = load i32*, i32** @fd, align 8
  %112 = load i64, i64* @ansI, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @SEEK_SET, align 4
  %116 = call i64 @lseek(i32 %114, i32 0, i32 %115)
  %117 = icmp eq i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load i32*, i32** @fd, align 8
  %121 = load i64, i64* @ansI, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @write(i32 %123, i32* @fsz, i32 8)
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %75, %58, %30, %20
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @init_files(i32) #1

declare dso_local i32 @open_file(i64, i8*, i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @init_data(...) #1

declare dso_local i32 @run(...) #1

declare dso_local i32 @flush_w_buff(...) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
