__attribute__((used)) static void FUNC0( void ) {
	char	teamList[4096];
	char	*teamName;
	int		i, len, count;

	count = FUNC0( "", "team", teamList, 4096 );

	if (count) {
		teamName = teamList;
		for ( i = 0; i < count; i++ ) {
			len = strlen( teamName );
			FUNC0(teamName);
			teamName += len + 1;
		}
	}

}