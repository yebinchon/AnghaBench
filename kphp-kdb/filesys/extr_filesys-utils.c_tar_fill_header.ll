; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_tar_fill_header.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_tar_fill_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i64, i64 }
%struct.passwd = type { i32 }
%struct.group = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"too long full filename: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%07o\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%011llo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.stat*, i8*)* @tar_fill_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tar_fill_header(i32 %0, i8* %1, %struct.stat* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.passwd*, align 8
  %17 = alloca %struct.group*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.stat* %2, %struct.stat** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @memset(i8* %18, i32 0, i32 512)
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %10, align 4
  store i32 99, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 99
  br i1 %23, label %24, label %59

24:                                               ; preds = %4
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = getelementptr inbounds i8, i8* %28, i64 -99
  %30 = call i8* @strchr(i8* %29, i8 signext 47)
  store i8* %30, i8** %13, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 1, i32* %12, align 4
  br label %58

34:                                               ; preds = %24
  %35 = load i8*, i8** %13, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp sgt i32 %41, 155
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 1, i32* %12, align 4
  br label %57

44:                                               ; preds = %34
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = call i32 @strcpy(i8* %45, i8* %50)
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 345
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @memcpy(i8* %53, i8* %54, i32 %55)
  br label %57

57:                                               ; preds = %44, %43
  br label %58

58:                                               ; preds = %57, %33
  br label %63

59:                                               ; preds = %4
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @strcpy(i8* %60, i8* %61)
  br label %63

63:                                               ; preds = %59, %58
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %63
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %67)
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @strlen(i8* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @tar_fill_longlink_header(i8* %71, i32 %72, i8 signext 76)
  %74 = load i32, i32* %6, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @tar_write_long_link_header(i32 %74, i8* %75, i32 %76, i8* %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %66
  %82 = load i32, i32* %15, align 4
  store i32 %82, i32* %5, align 4
  br label %167

83:                                               ; preds = %66
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @memset(i8* %84, i32 0, i32 512)
  %86 = load i8*, i8** %7, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @memcpy(i8* %86, i8* %87, i32 100)
  br label %89

89:                                               ; preds = %83, %63
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 100
  %92 = load %struct.stat*, %struct.stat** %8, align 8
  %93 = getelementptr inbounds %struct.stat, %struct.stat* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @sprintf(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %94)
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 108
  %98 = load %struct.stat*, %struct.stat** %8, align 8
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @sprintf(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %100)
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 116
  %104 = load %struct.stat*, %struct.stat** %8, align 8
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @sprintf(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %106)
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 124
  %110 = load %struct.stat*, %struct.stat** %8, align 8
  %111 = getelementptr inbounds %struct.stat, %struct.stat* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @sprintf(i8* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %112)
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 136
  %116 = load %struct.stat*, %struct.stat** %8, align 8
  %117 = getelementptr inbounds %struct.stat, %struct.stat* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @sprintf(i8* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %118)
  %120 = load i8*, i8** %7, align 8
  %121 = call i32 @tar_fill_ustar_magic(i8* %120)
  %122 = load i8*, i8** %7, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 156
  store i8 48, i8* %123, align 1
  %124 = load %struct.stat*, %struct.stat** %8, align 8
  %125 = getelementptr inbounds %struct.stat, %struct.stat* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i64 @S_ISLNK(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %89
  %131 = load i8*, i8** %7, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 156
  store i8 50, i8* %132, align 1
  br label %144

133:                                              ; preds = %89
  %134 = load %struct.stat*, %struct.stat** %8, align 8
  %135 = getelementptr inbounds %struct.stat, %struct.stat* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i64 @S_ISDIR(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load i8*, i8** %7, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 156
  store i8 53, i8* %142, align 1
  br label %143

143:                                              ; preds = %140, %133
  br label %144

144:                                              ; preds = %143, %130
  %145 = load %struct.stat*, %struct.stat** %8, align 8
  %146 = getelementptr inbounds %struct.stat, %struct.stat* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = call %struct.passwd* @getpwuid(i32 %148)
  store %struct.passwd* %149, %struct.passwd** %16, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 265
  %152 = load %struct.passwd*, %struct.passwd** %16, align 8
  %153 = getelementptr inbounds %struct.passwd, %struct.passwd* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @strncpy(i8* %151, i32 %154, i32 32)
  %156 = load %struct.stat*, %struct.stat** %8, align 8
  %157 = getelementptr inbounds %struct.stat, %struct.stat* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = call %struct.group* @getgrgid(i32 %159)
  store %struct.group* %160, %struct.group** %17, align 8
  %161 = load i8*, i8** %7, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 297
  %163 = load %struct.group*, %struct.group** %17, align 8
  %164 = getelementptr inbounds %struct.group, %struct.group* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @strncpy(i8* %162, i32 %165, i32 32)
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %144, %81
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*) #1

declare dso_local i32 @tar_fill_longlink_header(i8*, i32, i8 signext) #1

declare dso_local i32 @tar_write_long_link_header(i32, i8*, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @tar_fill_ustar_magic(i8*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local %struct.group* @getgrgid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
