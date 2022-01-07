; ModuleID = '/home/carl/AnghaBench/kphp-kdb/spell/extr_spell-engine.c_memcache_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/spell/extr_spell-engine.c_memcache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }
%struct.keep_mc_store = type { i64*, i32 }

@cmd_set = common dso_local global i32 0, align 4
@mct_set = common dso_local global i32 0, align 4
@VALUE_BUFFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"text%d\00", align 1
@max_msg_size = common dso_local global i32 0, align 4
@value_buff = common dso_local global i64* null, align 8
@test_mode = common dso_local global i64 0, align 8
@max_misspell_words = common dso_local global i64 0, align 8
@worst_misspell_msg = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_store(%struct.connection* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.keep_mc_store, align 8
  %17 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* @cmd_set, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @cmd_set, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @mct_set, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* @VALUE_BUFFSIZE, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp sge i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %7
  %29 = load %struct.connection*, %struct.connection** %9, align 8
  %30 = call i32 @free_tmp_buffers(%struct.connection* %29)
  store i32 -2, i32* %8, align 4
  br label %100

31:                                               ; preds = %23
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %16, i32 0, i32 1
  %34 = call i32 @sscanf(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %33)
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %97

36:                                               ; preds = %31
  %37 = load i32, i32* @max_msg_size, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* @max_msg_size, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load %struct.connection*, %struct.connection** %9, align 8
  %44 = getelementptr inbounds %struct.connection, %struct.connection* %43, i32 0, i32 1
  %45 = load i64*, i64** @value_buff, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @read_in(i32* %44, i64* %45, i32 %46)
  %48 = load i32, i32* %15, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i64*, i64** @value_buff, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  store i64 0, i64* %55, align 8
  %56 = load i64*, i64** @value_buff, align 8
  %57 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %16, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @test_mode, align 8
  %60 = call i32 @spell_check(i64* %56, i64* %58, i64 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %94, label %63

63:                                               ; preds = %42
  %64 = load i64, i64* @max_misspell_words, align 8
  %65 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %16, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %64, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %16, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* @max_misspell_words, align 8
  %75 = load i64, i64* @test_mode, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load i64, i64* @worst_misspell_msg, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i64, i64* @worst_misspell_msg, align 8
  %82 = call i32 @free(i64 %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i64*, i64** @value_buff, align 8
  %85 = call i64 @strdup(i64* %84)
  store i64 %85, i64* @worst_misspell_msg, align 8
  br label %86

86:                                               ; preds = %83, %70
  br label %87

87:                                               ; preds = %86, %63
  %88 = load %struct.connection*, %struct.connection** %9, align 8
  %89 = call i32 @init_tmp_buffers(%struct.connection* %88)
  %90 = load %struct.connection*, %struct.connection** %9, align 8
  %91 = getelementptr inbounds %struct.connection, %struct.connection* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @write_out(i32 %92, %struct.keep_mc_store* %16, i32 16)
  store i32 1, i32* %8, align 4
  br label %100

94:                                               ; preds = %42
  %95 = load %struct.connection*, %struct.connection** %9, align 8
  %96 = call i32 @free_tmp_buffers(%struct.connection* %95)
  store i32 0, i32* %8, align 4
  br label %100

97:                                               ; preds = %31
  %98 = load %struct.connection*, %struct.connection** %9, align 8
  %99 = call i32 @free_tmp_buffers(%struct.connection* %98)
  store i32 -2, i32* %8, align 4
  br label %100

100:                                              ; preds = %97, %94, %87, %28
  %101 = load i32, i32* %8, align 4
  ret i32 %101
}

declare dso_local i32 @free_tmp_buffers(%struct.connection*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i64*, i32) #1

declare dso_local i32 @spell_check(i64*, i64*, i64) #1

declare dso_local i32 @free(i64) #1

declare dso_local i64 @strdup(i64*) #1

declare dso_local i32 @init_tmp_buffers(%struct.connection*) #1

declare dso_local i32 @write_out(i32, %struct.keep_mc_store*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
