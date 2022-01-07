; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-engine.c_memcache_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-engine.c_memcache_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"memcache_delete: key='%s'\0A\00", align 1
@mode_names = common dso_local global i8** null, align 8
@mode = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%d,%d%n\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"DELETED\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"NOT_FOUND\0D\0A\00", align 1
@delete = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"album\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_delete(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @INIT, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @hst(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @eat_at(i8* %19, i32 %20, i8** %8, i32* %9)
  %22 = load i32, i32* %9, align 4
  %23 = icmp sge i32 %22, 5
  br i1 %23, label %24, label %66

24:                                               ; preds = %3
  %25 = load i8*, i8** %8, align 8
  %26 = load i8**, i8*** @mode_names, align 8
  %27 = load i64, i64* @mode, align 8
  %28 = getelementptr inbounds i8*, i8** %26, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strncmp(i8* %25, i8* %29, i32 5)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %66, label %32

32:                                               ; preds = %24
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 5
  %35 = call i32 @sscanf(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %10, i32* %11, i32* %12)
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 5
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i64 @do_delete_photo(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.connection*, %struct.connection** %5, align 8
  %52 = getelementptr inbounds %struct.connection, %struct.connection* %51, i32 0, i32 0
  %53 = call i32 @write_out(i32* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  br label %58

54:                                               ; preds = %45
  %55 = load %struct.connection*, %struct.connection** %5, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 0
  %57 = call i32 @write_out(i32* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 11)
  br label %58

58:                                               ; preds = %54, %50
  br label %63

59:                                               ; preds = %37, %32
  %60 = load %struct.connection*, %struct.connection** %5, align 8
  %61 = getelementptr inbounds %struct.connection, %struct.connection* %60, i32 0, i32 0
  %62 = call i32 @write_out(i32* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 11)
  br label %63

63:                                               ; preds = %59, %58
  %64 = load i32, i32* @delete, align 4
  %65 = call i32 @RETURN(i32 %64, i32 0)
  br label %66

66:                                               ; preds = %63, %24, %3
  %67 = load i32, i32* %9, align 4
  %68 = icmp sge i32 %67, 5
  br i1 %68, label %69, label %107

69:                                               ; preds = %66
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @strncmp(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %107, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 5
  %76 = call i32 @sscanf(i8* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %13, i32* %14, i32* %15)
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %100

78:                                               ; preds = %73
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, 5
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call i64 @do_delete_album(i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.connection*, %struct.connection** %5, align 8
  %93 = getelementptr inbounds %struct.connection, %struct.connection* %92, i32 0, i32 0
  %94 = call i32 @write_out(i32* %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  br label %99

95:                                               ; preds = %86
  %96 = load %struct.connection*, %struct.connection** %5, align 8
  %97 = getelementptr inbounds %struct.connection, %struct.connection* %96, i32 0, i32 0
  %98 = call i32 @write_out(i32* %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 11)
  br label %99

99:                                               ; preds = %95, %91
  br label %104

100:                                              ; preds = %78, %73
  %101 = load %struct.connection*, %struct.connection** %5, align 8
  %102 = getelementptr inbounds %struct.connection, %struct.connection* %101, i32 0, i32 0
  %103 = call i32 @write_out(i32* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 11)
  br label %104

104:                                              ; preds = %100, %99
  %105 = load i32, i32* @delete, align 4
  %106 = call i32 @RETURN(i32 %105, i32 0)
  br label %107

107:                                              ; preds = %104, %69, %66
  %108 = load %struct.connection*, %struct.connection** %5, align 8
  %109 = getelementptr inbounds %struct.connection, %struct.connection* %108, i32 0, i32 0
  %110 = call i32 @write_out(i32* %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 11)
  %111 = load i32, i32* @delete, align 4
  %112 = call i32 @RETURN(i32 %111, i32 0)
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @hst(i8*, i8*) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @do_delete_photo(i32, i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local i64 @do_delete_album(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
