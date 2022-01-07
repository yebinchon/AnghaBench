; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_setup_unpack_trees_porcelain.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_setup_unpack_trees_porcelain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unpack_trees_options = type { i8**, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"checkout\00", align 1
@advice_commit_before_merge = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [148 x i8] c"Your local changes to the following files would be overwritten by checkout:\0A%%sPlease commit your changes or stash them before you switch branches.\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"Your local changes to the following files would be overwritten by checkout:\0A%%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.4 = private unnamed_addr constant [135 x i8] c"Your local changes to the following files would be overwritten by merge:\0A%%sPlease commit your changes or stash them before you merge.\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"Your local changes to the following files would be overwritten by merge:\0A%%s\00", align 1
@.str.6 = private unnamed_addr constant [129 x i8] c"Your local changes to the following files would be overwritten by %s:\0A%%sPlease commit your changes or stash them before you %s.\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"Your local changes to the following files would be overwritten by %s:\0A%%s\00", align 1
@ERROR_NOT_UPTODATE_FILE = common dso_local global i64 0, align 8
@ERROR_WOULD_OVERWRITE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [74 x i8] c"Updating the following directories would lose untracked files in them:\0A%s\00", align 1
@ERROR_NOT_UPTODATE_DIR = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [131 x i8] c"The following untracked working tree files would be removed by checkout:\0A%%sPlease move or remove them before you switch branches.\00", align 1
@.str.10 = private unnamed_addr constant [77 x i8] c"The following untracked working tree files would be removed by checkout:\0A%%s\00", align 1
@.str.11 = private unnamed_addr constant [118 x i8] c"The following untracked working tree files would be removed by merge:\0A%%sPlease move or remove them before you merge.\00", align 1
@.str.12 = private unnamed_addr constant [74 x i8] c"The following untracked working tree files would be removed by merge:\0A%%s\00", align 1
@.str.13 = private unnamed_addr constant [112 x i8] c"The following untracked working tree files would be removed by %s:\0A%%sPlease move or remove them before you %s.\00", align 1
@.str.14 = private unnamed_addr constant [71 x i8] c"The following untracked working tree files would be removed by %s:\0A%%s\00", align 1
@ERROR_WOULD_LOSE_UNTRACKED_REMOVED = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [135 x i8] c"The following untracked working tree files would be overwritten by checkout:\0A%%sPlease move or remove them before you switch branches.\00", align 1
@.str.16 = private unnamed_addr constant [81 x i8] c"The following untracked working tree files would be overwritten by checkout:\0A%%s\00", align 1
@.str.17 = private unnamed_addr constant [122 x i8] c"The following untracked working tree files would be overwritten by merge:\0A%%sPlease move or remove them before you merge.\00", align 1
@.str.18 = private unnamed_addr constant [78 x i8] c"The following untracked working tree files would be overwritten by merge:\0A%%s\00", align 1
@.str.19 = private unnamed_addr constant [116 x i8] c"The following untracked working tree files would be overwritten by %s:\0A%%sPlease move or remove them before you %s.\00", align 1
@.str.20 = private unnamed_addr constant [75 x i8] c"The following untracked working tree files would be overwritten by %s:\0A%%s\00", align 1
@ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [45 x i8] c"Entry '%s' overlaps with '%s'.  Cannot bind.\00", align 1
@ERROR_BIND_OVERLAP = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [76 x i8] c"Cannot update sparse checkout: the following entries are not up to date:\0A%s\00", align 1
@ERROR_SPARSE_NOT_UPTODATE_FILE = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [84 x i8] c"The following working tree files would be overwritten by sparse checkout update:\0A%s\00", align 1
@ERROR_WOULD_LOSE_ORPHANED_OVERWRITTEN = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [80 x i8] c"The following working tree files would be removed by sparse checkout update:\0A%s\00", align 1
@ERROR_WOULD_LOSE_ORPHANED_REMOVED = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [28 x i8] c"Cannot update submodule:\0A%s\00", align 1
@ERROR_WOULD_LOSE_SUBMODULE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_unpack_trees_porcelain(%struct.unpack_trees_options* %0, i8* %1) #0 {
  %3 = alloca %struct.unpack_trees_options*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store %struct.unpack_trees_options* %0, %struct.unpack_trees_options** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %3, align 8
  %9 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %8, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  store i8** %10, i8*** %6, align 8
  %11 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %3, align 8
  %12 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %11, i32 0, i32 3
  %13 = call i32 @argv_array_init(i32* %12)
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* @advice_commit_before_merge, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i8* @_(i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.1, i64 0, i64 0))
  br label %24

22:                                               ; preds = %17
  %23 = call i8* @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i8* [ %21, %20 ], [ %23, %22 ]
  store i8* %25, i8** %7, align 8
  br label %49

26:                                               ; preds = %2
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* @advice_commit_before_merge, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i8* @_(i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.4, i64 0, i64 0))
  br label %37

35:                                               ; preds = %30
  %36 = call i8* @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i8* [ %34, %33 ], [ %36, %35 ]
  store i8* %38, i8** %7, align 8
  br label %48

39:                                               ; preds = %26
  %40 = load i64, i64* @advice_commit_before_merge, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i8* @_(i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.6, i64 0, i64 0))
  br label %46

44:                                               ; preds = %39
  %45 = call i8* @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i8* [ %43, %42 ], [ %45, %44 ]
  store i8* %47, i8** %7, align 8
  br label %48

48:                                               ; preds = %46, %37
  br label %49

49:                                               ; preds = %48, %24
  %50 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %3, align 8
  %51 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %50, i32 0, i32 3
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i8* @argv_array_pushf(i32* %51, i8* %52, i8* %53, i8* %54)
  %56 = load i8**, i8*** %6, align 8
  %57 = load i64, i64* @ERROR_NOT_UPTODATE_FILE, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  store i8* %55, i8** %58, align 8
  %59 = load i8**, i8*** %6, align 8
  %60 = load i64, i64* @ERROR_WOULD_OVERWRITE, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  store i8* %55, i8** %61, align 8
  %62 = call i8* @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.8, i64 0, i64 0))
  %63 = load i8**, i8*** %6, align 8
  %64 = load i64, i64* @ERROR_NOT_UPTODATE_DIR, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  store i8* %62, i8** %65, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %49
  %70 = load i64, i64* @advice_commit_before_merge, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i8* @_(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.9, i64 0, i64 0))
  br label %76

74:                                               ; preds = %69
  %75 = call i8* @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.10, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i8* [ %73, %72 ], [ %75, %74 ]
  store i8* %77, i8** %7, align 8
  br label %101

78:                                               ; preds = %49
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %78
  %83 = load i64, i64* @advice_commit_before_merge, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i8* @_(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.11, i64 0, i64 0))
  br label %89

87:                                               ; preds = %82
  %88 = call i8* @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.12, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i8* [ %86, %85 ], [ %88, %87 ]
  store i8* %90, i8** %7, align 8
  br label %100

91:                                               ; preds = %78
  %92 = load i64, i64* @advice_commit_before_merge, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i8* @_(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.13, i64 0, i64 0))
  br label %98

96:                                               ; preds = %91
  %97 = call i8* @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.14, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i8* [ %95, %94 ], [ %97, %96 ]
  store i8* %99, i8** %7, align 8
  br label %100

100:                                              ; preds = %98, %89
  br label %101

101:                                              ; preds = %100, %76
  %102 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %3, align 8
  %103 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %102, i32 0, i32 3
  %104 = load i8*, i8** %7, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = call i8* @argv_array_pushf(i32* %103, i8* %104, i8* %105, i8* %106)
  %108 = load i8**, i8*** %6, align 8
  %109 = load i64, i64* @ERROR_WOULD_LOSE_UNTRACKED_REMOVED, align 8
  %110 = getelementptr inbounds i8*, i8** %108, i64 %109
  store i8* %107, i8** %110, align 8
  %111 = load i8*, i8** %4, align 8
  %112 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %101
  %115 = load i64, i64* @advice_commit_before_merge, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = call i8* @_(i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.15, i64 0, i64 0))
  br label %121

119:                                              ; preds = %114
  %120 = call i8* @_(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.16, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i8* [ %118, %117 ], [ %120, %119 ]
  store i8* %122, i8** %7, align 8
  br label %146

123:                                              ; preds = %101
  %124 = load i8*, i8** %4, align 8
  %125 = call i32 @strcmp(i8* %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %123
  %128 = load i64, i64* @advice_commit_before_merge, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = call i8* @_(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.17, i64 0, i64 0))
  br label %134

132:                                              ; preds = %127
  %133 = call i8* @_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.18, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i8* [ %131, %130 ], [ %133, %132 ]
  store i8* %135, i8** %7, align 8
  br label %145

136:                                              ; preds = %123
  %137 = load i64, i64* @advice_commit_before_merge, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i8* @_(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.19, i64 0, i64 0))
  br label %143

141:                                              ; preds = %136
  %142 = call i8* @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i8* [ %140, %139 ], [ %142, %141 ]
  store i8* %144, i8** %7, align 8
  br label %145

145:                                              ; preds = %143, %134
  br label %146

146:                                              ; preds = %145, %121
  %147 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %3, align 8
  %148 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %147, i32 0, i32 3
  %149 = load i8*, i8** %7, align 8
  %150 = load i8*, i8** %4, align 8
  %151 = load i8*, i8** %4, align 8
  %152 = call i8* @argv_array_pushf(i32* %148, i8* %149, i8* %150, i8* %151)
  %153 = load i8**, i8*** %6, align 8
  %154 = load i64, i64* @ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN, align 8
  %155 = getelementptr inbounds i8*, i8** %153, i64 %154
  store i8* %152, i8** %155, align 8
  %156 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0))
  %157 = load i8**, i8*** %6, align 8
  %158 = load i64, i64* @ERROR_BIND_OVERLAP, align 8
  %159 = getelementptr inbounds i8*, i8** %157, i64 %158
  store i8* %156, i8** %159, align 8
  %160 = call i8* @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.22, i64 0, i64 0))
  %161 = load i8**, i8*** %6, align 8
  %162 = load i64, i64* @ERROR_SPARSE_NOT_UPTODATE_FILE, align 8
  %163 = getelementptr inbounds i8*, i8** %161, i64 %162
  store i8* %160, i8** %163, align 8
  %164 = call i8* @_(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.23, i64 0, i64 0))
  %165 = load i8**, i8*** %6, align 8
  %166 = load i64, i64* @ERROR_WOULD_LOSE_ORPHANED_OVERWRITTEN, align 8
  %167 = getelementptr inbounds i8*, i8** %165, i64 %166
  store i8* %164, i8** %167, align 8
  %168 = call i8* @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.24, i64 0, i64 0))
  %169 = load i8**, i8*** %6, align 8
  %170 = load i64, i64* @ERROR_WOULD_LOSE_ORPHANED_REMOVED, align 8
  %171 = getelementptr inbounds i8*, i8** %169, i64 %170
  store i8* %168, i8** %171, align 8
  %172 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0))
  %173 = load i8**, i8*** %6, align 8
  %174 = load i64, i64* @ERROR_WOULD_LOSE_SUBMODULE, align 8
  %175 = getelementptr inbounds i8*, i8** %173, i64 %174
  store i8* %172, i8** %175, align 8
  %176 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %3, align 8
  %177 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %176, i32 0, i32 1
  store i32 1, i32* %177, align 8
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %193, %146
  %179 = load i32, i32* %5, align 4
  %180 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %3, align 8
  %181 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %180, i32 0, i32 2
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %182)
  %184 = icmp slt i32 %179, %183
  br i1 %184, label %185, label %196

185:                                              ; preds = %178
  %186 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %3, align 8
  %187 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %186, i32 0, i32 2
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  store i32 1, i32* %192, align 4
  br label %193

193:                                              ; preds = %185
  %194 = load i32, i32* %5, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %5, align 4
  br label %178

196:                                              ; preds = %178
  ret void
}

declare dso_local i32 @argv_array_init(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @argv_array_pushf(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
